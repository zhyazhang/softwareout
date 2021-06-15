package com.wjm.softwareout.system.service.impl;

import com.wjm.softwareout.system.dao.FileMapper;
import com.wjm.softwareout.system.entity.ProjectFile;
import com.wjm.softwareout.system.service.FileService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 16:43
 */

@Service
public class FileServiceImpl implements FileService {

    @Resource
    private FileMapper fileMapper;

    @Override
    public List<ProjectFile> getSendFilePathByProjectID(Integer id) {

        return fileMapper.getSendFilePathByProjectID(id);
    }

    @Transactional(rollbackFor = Exception.class)
    public void addFileToProjectID(List<ProjectFile> projectFiles) {
        for (ProjectFile projectFile : projectFiles) {
            fileMapper.insert(projectFile);
        }
    }

    @Override
    public void deleteFileByProjectID(Integer id) {
        fileMapper.deleteFileByProjectID(id);
    }

    @Override
    public List<String> getFilePathByProjectID(Integer id) {


        return fileMapper.getFilePathByProjectID(id);
    }
}
