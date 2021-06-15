package com.wjm.softwareout.system.vo;

import com.wjm.softwareout.system.entity.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @ClassName UserVo
 * @Description TODO
 *
 * @Date 2019/07/04 16:38
 * @Version 1.0
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVo extends User {
    /**
     * 用户id组成的数组，用于批量删除
     */
    private String[] ids;

    /**
     * 当前页码，匹配layui数据表格
     */
    private Integer page;

    /**
     * 每页的数据大小，匹配layui 数据表格
     */
    private Integer limit;


}
