package com.wjm.softwareout.system.utils;

import org.apache.shiro.SecurityUtils;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 13:30
 */
public class UserPrincipal {

    public static Integer getUserPrincipal() {

        return ((ActiveUser)SecurityUtils.getSubject().getPrincipal()).getCurrentUser().getId();

    }

}
