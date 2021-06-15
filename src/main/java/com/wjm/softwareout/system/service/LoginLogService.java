package com.wjm.softwareout.system.service;

import com.wjm.softwareout.system.common.JsonData;
import com.wjm.softwareout.system.entity.LogLogin;
import com.wjm.softwareout.system.vo.LogLoginVo;

/**
 *
 * @Date: 2019-07-21 9:15
 * @Description TODO
 */
public interface LoginLogService {
    JsonData getLoginLogByPage(LogLoginVo logLoginVo);

    void saveLoginLog(LogLogin logLogin);

    void removeOneLoginLogById(Integer id);

    void batchDeleteLogInfo(LogLoginVo logLoginVo);
}
