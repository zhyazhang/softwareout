package com.wjm.softwareout.system.vo;

import com.wjm.softwareout.system.entity.Permission;
import lombok.Data;

/**
 * @ClassName PermissionVo
 * @Description TODO: permission vo类封装前端分页以及当页数据条数
 *
 * @Date 2019/07/06 13:54
 * @Version 1.0
 **/
@Data
public class PermissionVo extends Permission {
    /**
     * 菜单id数据
     */
    private String[] ids;
    /**
     * 当前页码
     */
    private Integer page;
    /**
     * 每页数据条数
     */
    private Integer limit;
}
