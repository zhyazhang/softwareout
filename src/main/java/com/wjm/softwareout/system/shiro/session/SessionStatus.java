package com.wjm.softwareout.system.shiro.session;

import java.io.Serializable;

/**
 * @ClassName SessionStatus
 * @Description TODO
 *
 * @Date 2019/07/27 20:14
 * @Version 1.0
 **/
public class SessionStatus implements Serializable {
    private static final long serialVersionUID = 1L;

    //是否踢出 true:有效，false：踢出。
    private Boolean onlineStatus = Boolean.TRUE;


    public Boolean isOnlineStatus() {
        return onlineStatus;
    }

    public Boolean getOnlineStatus() {
        return onlineStatus;
    }

    public void setOnlineStatus(Boolean onlineStatus) {
        this.onlineStatus = onlineStatus;
    }
}
