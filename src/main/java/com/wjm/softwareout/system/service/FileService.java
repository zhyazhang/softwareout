package com.wjm.softwareout.system.service;

import com.wjm.softwareout.system.entity.ProjectFile;

import java.util.List;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 16:43
 */
public interface FileService {

    void addFileToProjectID(List<ProjectFile> projectFiles);

    void deleteFileByProjectID(Integer id);

    List<String> getFilePathByProjectID(Integer id);

    List<ProjectFile> getSendFilePathByProjectID(Integer id);




}
