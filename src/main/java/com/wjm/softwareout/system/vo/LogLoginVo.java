package com.wjm.softwareout.system.vo;

import com.wjm.softwareout.system.entity.LogLogin;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @ClassName LogLoginVo
 * @Description TODO
 *
 * @Date 2019/07/21 9:11
 * @Version 1.0
 **/
@Data
public class LogLoginVo extends LogLogin {

    /**
     * 编号数组
     */
    private String[] ids;
    /**
     * 当前页码
     */
    private Integer page;
    /**
     * 每页条数
     */
    private Integer limit;
    /**
     * 开始时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startTime;
    /**
     * 结束时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endTime;

}
