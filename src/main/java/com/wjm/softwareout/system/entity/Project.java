package com.wjm.softwareout.system.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 12:58
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Project {


    private Integer id;

    /*项目名*/
    private String title;

    /*项目简介*/
    private String introduction;

    /*项目状态
    1:未审核
    2：已审核
    3：已被接单
    4：已完成
    5：项目暂停
    6：项目撤销*/

    private Integer state;

    /*项目备注*/
    private String remark;

    /*发包人id*/
    private Integer sendid;

    /*接包人id*/
    private Integer receiveid;

    private String sendname;

    private String receivename;

    private String complete;

    private List<String> projectFileArray;

}
