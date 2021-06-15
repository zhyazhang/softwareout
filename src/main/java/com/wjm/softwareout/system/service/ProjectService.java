package com.wjm.softwareout.system.service;

import com.wjm.softwareout.system.common.JsonData;
import com.wjm.softwareout.system.entity.Project;
import com.wjm.softwareout.system.vo.ProjectVo;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 12:50
 */
public interface ProjectService {

    Integer addProject(Project project);

    JsonData selectProjectsByParams(ProjectVo projectVo);

    void batchDeleteProject(ProjectVo projectVo);

    void removeProjectById(Integer id);

    Project getProjectByID(Integer id);

    void modifyProject(ProjectVo projectVo);

    void completeProject(Project project);

    void receiveProject(Project project);

    int projectCount();

    int projectUnReceiveCount();

    void dontDoProject(Integer id);


}
