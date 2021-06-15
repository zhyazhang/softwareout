package com.wjm.softwareout.system.dao;

import com.wjm.softwareout.system.entity.ProjectFile;

import java.util.List;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 16:43
 */

public interface FileMapper {

    Integer insert(ProjectFile projectFile);

    void deleteFileByProjectID(Integer id);

    List<String> getFilePathByProjectID(Integer id);

    List<ProjectFile> getSendFilePathByProjectID(Integer id);


}
