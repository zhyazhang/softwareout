package com.wjm.softwareout.system.service;

import com.wjm.softwareout.system.common.JsonData;
import com.wjm.softwareout.system.entity.User;
import com.wjm.softwareout.system.vo.UserVo;

import java.util.List;

/**
 *
 * @Date: 2019-07-04 16:21
 * @Description TODO
 */
public interface UserService {
    /**
     * 根据登录名查询用户
     */
    User findUserByLoginName(String loginName);

    JsonData getAllUsersByPage(UserVo userVo);

    void addUser(User userVo);

    User getUserById(Integer id);

    void modifyUser(User userVo);

    void removeUserById(Integer id);

    void batchDeleteUser(UserVo userVo);

    List<User> getAllUsers();

    void modifyUserPwd(String oldPwd,String newPwd,Integer userId);

    JsonData loadAllUserRole(UserVo userVo);

    void saveUserRole(UserVo userVo);

    void checkOldPwdIsExsit(String oldPwd, Integer userId);

    User modifyHeadImg(String loginname, String src);

    int getRoleIdByUserID(Integer id);

    int userCount();
}
