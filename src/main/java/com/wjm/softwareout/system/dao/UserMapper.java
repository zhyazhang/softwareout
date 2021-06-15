package com.wjm.softwareout.system.dao;

import com.wjm.softwareout.system.entity.User;
import com.wjm.softwareout.system.vo.UserVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int selectRoleIdByUserID(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> selectAllUsersByParams(@Param("userVo") UserVo userVo);


    /**
     * 根据登录名查询用户
     */
    User queryUserByLoginName(@Param("loginName") String loginName);

    List<User> selectAllUsers();

    int updateUserPwd(@Param("newPwd") String newPwd,
                      @Param("userId") Integer userId);

    User selectUserByLoginName(@Param("loginName") String loginname);

    int userCount();

}