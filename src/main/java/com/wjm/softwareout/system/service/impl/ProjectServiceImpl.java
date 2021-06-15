package com.wjm.softwareout.system.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.google.common.collect.Lists;
import com.wjm.softwareout.system.common.BeanValidator;
import com.wjm.softwareout.system.common.JsonData;
import com.wjm.softwareout.system.dao.FileMapper;
import com.wjm.softwareout.system.dao.ProjectMapper;
import com.wjm.softwareout.system.entity.Project;
import com.wjm.softwareout.system.entity.ProjectFile;
import com.wjm.softwareout.system.exception.EasyBmsException;
import com.wjm.softwareout.system.service.FileService;
import com.wjm.softwareout.system.service.ProjectService;
import com.wjm.softwareout.system.utils.MyFileUtil;
import com.wjm.softwareout.system.utils.StringUtils;
import com.wjm.softwareout.system.utils.UserPrincipal;
import com.wjm.softwareout.system.vo.ProjectVo;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 12:51
 */
@Service
public class ProjectServiceImpl implements ProjectService {

    @Resource
    private ProjectMapper projectMapper;

    @Resource
    private FileMapper fileMapper;

    @Autowired
    private FileService fileService;


    /**
     * TODO 假删除 项目接收方删除将项目重置为未审核状态
     *
     * @param id
     */
    @Override
    public void dontDoProject(Integer id) {
        Project projectByID = getProjectByID(id);
        if (projectByID.getState() == 2) {
            Project project = new Project();
            project.setId(id);
            project.setState(1);
            projectMapper.updateByPrimaryKeySelective(project);
        }

    }

    @Override
    public int projectUnReceiveCount() {
        return projectMapper.projectUnReceiveCount();
    }

    @Override
    public int projectCount() {

        return projectMapper.projectCount();
    }

    @Override
    public void receiveProject(Project project) {

        projectMapper.updateByPrimaryKeySelective(project);

    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void completeProject(Project project) {


        try {
            /**
             * 设置项目完成标志
             */
            project.setState(4);
            projectMapper.updateByPrimaryKeySelective(project);
            List<ProjectFile> projectFiles = new ArrayList<>();
            for (String path : project.getProjectFileArray()) {
                ProjectFile projectFile = new ProjectFile();
                projectFile.setPath(path);
                projectFile.setProid(project.getId());
                projectFile.setType(2);
                projectFiles.add(projectFile);
            }
            fileService.addFileToProjectID(projectFiles);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException();
        }


    }

    @Override
    public void modifyProject(ProjectVo projectVo) {
        BeanValidator.check(projectVo);
        int rows = projectMapper.updateByPrimaryKeySelective(projectVo);
        if (rows == 0) {
            throw new EasyBmsException("更新角色出现错误");
        }
    }

    @Override
    public Project getProjectByID(Integer id) {

        ProjectVo projectVo = new ProjectVo();
        projectVo.setId(id);
        Project project = new Project();
        List<Project> projects = projectMapper.selectProjectsByParams(projectVo);
        if (projects.size() == 1) {
            project = projects.get(0);
        }
        return project;
    }

    @Override
    public void removeProjectById(Integer id) {

        int rows = projectMapper.deleteByPrimaryKey(id);

        //查找项目所有文件路径
        List<String> pathList = fileMapper.getFilePathByProjectID(id);
        for (String path : pathList) {
            File file = new File(path);
            MyFileUtil.deleteFile(file);
        }

        //删除项目所有的文件
        fileMapper.deleteFileByProjectID(id);
        if (rows == 0) {
            throw new EasyBmsException("删除失败，数据库出现错误");
        }

    }

    @Override
    public Integer addProject(Project project) {

        Integer userId = UserPrincipal.getUserPrincipal();
        project.setSendid(userId);
        project.setState(1);
        Integer projectID = projectMapper.insert(project);
        return projectID;


    }

    @Override
    public JsonData selectProjectsByParams(ProjectVo projectVo) {


        /**
         * 使用分页
         */

        Page<Project> page = PageHelper.startPage(projectVo.getPage(), projectVo.getLimit());

        /**
         * 查询角色列表，根据ID 角色名称 地址备注信息 查询
         * 若相关属性为空，则全查询
         */
        List<Project> projects = projectMapper.selectProjectsByParams(projectVo);

        if (CollectionUtils.isEmpty(projects)) {
            projects = Lists.newArrayList();
        }

        return JsonData.success(page.getTotal(), projects);

    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public void batchDeleteProject(ProjectVo projectVo) {

        BeanValidator.check(projectVo);
        Integer[] ids = StringUtils.stringIdsToInt(projectVo.getIds());

        if (ids != null && ids.length > 0) {
            for (Integer id : ids) {
                int rows = projectMapper.deleteByPrimaryKey(id);
                //查找项目所有文件路径
                List<String> pathList = fileMapper.getFilePathByProjectID(id);

                for (String path : pathList) {
                    File file = new File(path);
                    MyFileUtil.deleteFile(file);
                }

                //删除项目所有的文件
                fileMapper.deleteFileByProjectID(id);
                if (rows == 0) {
                    throw new EasyBmsException("删除失败，数据库出现错误");
                }
            }
        }

    }
}
