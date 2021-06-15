package com.wjm.softwareout.system.controller;

import com.wjm.softwareout.system.common.JsonData;
import com.wjm.softwareout.system.entity.Project;
import com.wjm.softwareout.system.entity.ProjectFile;
import com.wjm.softwareout.system.service.FileService;
import com.wjm.softwareout.system.service.ProjectService;
import com.wjm.softwareout.system.service.UserService;
import com.wjm.softwareout.system.utils.UserPrincipal;
import com.wjm.softwareout.system.vo.ProjectVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 12:49
 */

@Controller
@RequestMapping("/project")
public class ProjectController {

    @Autowired
    private ProjectService projectService;

    @Autowired
    private FileService fileService;

    @Autowired
    private UserService userService;

    /**
     * 跳转到sendProject.jsp
     */
    @RequestMapping(value = "toSendProject.page", method = RequestMethod.GET)
    public String toSendProject() {
        return "system/project/projectSend";
    }

    /**
     * 跳转到receiveProject.jsp
     */
    @RequestMapping(value = "toReceiveProject.page", method = RequestMethod.GET)
    public String toReceiveProject() {
        return "system/project/projectReceive";
    }

    /**
     * 跳转到managerProject.jsp
     */
    @RequestMapping(value = "toManagerProject.page", method = RequestMethod.GET)
    public String toManagerProject() {
        return "system/project/projectManager";
    }

    /**
     * 跳转到projectAdd.jsp
     */
    @RequestMapping(value = "toProjectAdd.page", method = RequestMethod.GET)
    public String toProjectAdd() {
        return "system/project/projectAdd";
    }

    /**
     * 跳转到projectComplete.jsp
     */
    @RequestMapping(value = "toProjectComplete.page", method = RequestMethod.GET)
    public String toProjectComplete(String id, Model model) {

        model.addAttribute("id", id);

        return "system/project/projectComplete";
    }

    /**
     * 跳转到projectComplete.jsp
     */
    @RequestMapping(value = "toProjectView.page", method = RequestMethod.GET)
    public String toProjectView(Integer id, Model model) {
        Project project = projectService.getProjectByID(id);
        model.addAttribute("project", project);

        return "system/project/projectView";
    }

    /**
     * 跳转到projectUpdate.jsp
     */
    @RequestMapping(value = "toProjectUpdate.page", method = RequestMethod.GET)
    public String toProjectUpdate(@RequestParam(value = "id", required = true) Integer id, Model model) {

        //查询出当前要修改的项目信息
        Project project = projectService.getProjectByID(id);
        model.addAttribute("project", project);


        return "system/project/projectUpdate";
    }


    /**
     * 加载所有的项目
     *
     * @author: zzy
     * @description: TODO
     * @date: 2021/4/21 13:23
     * @Param: null
     */

    @RequestMapping(value = "loadAllProject.json", method = RequestMethod.GET)
    @ResponseBody
    public JsonData loadAllProject(ProjectVo projectVo) {

        Integer id = UserPrincipal.getUserPrincipal();
        int roleId = userService.getRoleIdByUserID(id);

        /**
         * 如果是普通用户，只能查看状态为2 即审核通过的项目
         */
        if (roleId == 7) {
            projectVo.setState(2);
        }

        JsonData jsonData = projectService.selectProjectsByParams(projectVo);
        return jsonData;
    }


    /**
     * 功能描述: 修改项目信息
     *
     * @return com.wjm.softwareout.system.common.JsonData
     * @Date 15:58 2019/07/09
     */
    @RequestMapping(value = "updateProject.json", method = RequestMethod.POST)
    @ResponseBody
    public JsonData updateRole(ProjectVo projectVo) {
        try {
            projectService.modifyProject(projectVo);
            return JsonData.success("项目更新成功");
        } catch (Exception e) {
            return JsonData.fail(e.getMessage());
        }
    }


    /**
     * 加载所有我发布的项目
     *
     * @author: zzy
     * @description: TODO
     * @date: 2021/4/21 13:24
     * @Param: null
     */
    @RequestMapping(value = "loadSendProject.json", method = RequestMethod.GET)
    @ResponseBody
    public JsonData loadSendProject(ProjectVo projectVo) {

        Integer userId = UserPrincipal.getUserPrincipal();
        JsonData jsonData = null;
        projectVo.setSendid(userId);
        try {
            jsonData = projectService.selectProjectsByParams(projectVo);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return jsonData;
    }

    /**
     * 加载所有我接收的项目
     *
     * @author: zzy
     * @description: TODO
     * @date: 2021/4/21 13:24
     * @Param: null
     */
    @RequestMapping(value = "loadReceiveProject.json", method = RequestMethod.GET)
    @ResponseBody
    public JsonData loadReceiveProject(ProjectVo projectVo) {

        Integer userId = UserPrincipal.getUserPrincipal();
        projectVo.setReceiveid(userId);
        JsonData jsonData = projectService.selectProjectsByParams(projectVo);
        return jsonData;

    }

    /**
     * 添加项目 发包方
     *
     * @author: zzy
     * @description: TODO
     * @date: 2021/4/21 13:24
     * @Param: null
     */
    @Transactional(rollbackFor = Exception.class)
    @RequestMapping(value = "addProject.json", method = RequestMethod.POST)
    @ResponseBody
    public JsonData insertProject(Project project) {

        try {

            int theLength = projectService.addProject(project);

            if (theLength != 1) {
                throw new RuntimeException();
            }

            Integer projectID = project.getId();
            List<ProjectFile> projectFiles = new ArrayList<>();
            for (String path : project.getProjectFileArray()) {
                ProjectFile projectFile = new ProjectFile();
                projectFile.setPath(path);
                projectFile.setProid(projectID);
                projectFile.setType(1);
                projectFiles.add(projectFile);
            }

            fileService.addFileToProjectID(projectFiles);

            return JsonData.success("发包成功");
        } catch (Exception e) {
            e.printStackTrace();
            return JsonData.fail(e.getMessage());
        }
    }

    /**
     * 添加项目 发包方
     *
     * @author: zzy
     * @description: TODO
     * @date: 2021/4/21 13:24
     * @Param: null
     */
    @Transactional(rollbackFor = Exception.class)
    @RequestMapping(value = "completeProject.json", method = RequestMethod.POST)
    @ResponseBody
    public JsonData completeProject(Project project) {

        try {
            projectService.completeProject(project);
            return JsonData.success("发包成功");
        } catch (Exception e) {
            e.printStackTrace();
            return JsonData.fail(e.getMessage());
        }
    }


    /**
     * 功能描述: 批量删除项目
     *
     * @return com.wjm.softwareout.system.common.JsonData
     * @Date 21:16 2019/07/09
     */
    @RequestMapping(value = "batchDeleteProject.json", method = RequestMethod.POST)
    @ResponseBody
    public JsonData batchDeleteProject(ProjectVo projectVo) {


        try {
            projectService.batchDeleteProject(projectVo);
            return JsonData.success("角色删除成功");
        } catch (Exception e) {
            e.printStackTrace();

            return JsonData.fail(e.getMessage());
        }
    }

    /**
     * 功能描述: 根据ID删除项目
     *
     * @param id
     * @return com.wjm.softwareout.system.common.JsonData
     * @Date 17:28 2019/07/09
     */
    @RequestMapping(value = "deleteProject.json", method = RequestMethod.POST)
    @ResponseBody
    public JsonData deleteRole(@RequestParam(value = "id", required = true) Integer id) {
        try {
            projectService.removeProjectById(id);
            return JsonData.success("项目删除成功");
        } catch (Exception e) {
            return JsonData.fail(e.getMessage());
        }
    }

    @RequestMapping(value = "receiveProject.json", method = RequestMethod.POST)
    @ResponseBody
    public JsonData receiveProject(@RequestParam(value = "id", required = true) Integer id) {


        Integer sendID = projectService.getProjectByID(id).getSendid();
        Integer userID = UserPrincipal.getUserPrincipal();

        if (!sendID.equals(userID)) {

            Project project = new Project();

            project.setReceiveid(userID);
            project.setId(id);
            project.setState(3);

            try {
                projectService.receiveProject(project);
                return JsonData.success("接包成功");
            } catch (Exception e) {
                e.printStackTrace();
                return JsonData.fail("接包失败");

            }

        } else {
            return JsonData.fail("不能接收自己发布的项目！");
        }

    }


    @RequestMapping(value = "dontDoProject.json", method = RequestMethod.POST)
    @ResponseBody
    public JsonData dontDoProject(@RequestParam(value = "id", required = true) Integer id) {

        try {
            projectService.dontDoProject(id);
            return JsonData.success("删除成功");
        } catch (Exception e) {
            return JsonData.fail("删除失败");


        }

    }


}
