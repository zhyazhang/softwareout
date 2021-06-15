package com.wjm.softwareout.system.dao;

import com.wjm.softwareout.system.entity.Project;
import com.wjm.softwareout.system.vo.ProjectVo;

import java.util.List;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 12:51
 */

public interface ProjectMapper {


    Integer insert(Project project);

    List<Project> selectProjectsByParams(ProjectVo project);

    int deleteByPrimaryKey(Integer id);


    int updateByPrimaryKeySelective(Project project);

    int projectCount();

    int projectUnReceiveCount();



}
