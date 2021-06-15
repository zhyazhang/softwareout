package com.wjm.softwareout.system.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author ：zzy
 * @description：TODO
 * @date ：2021/4/21 13:03
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProjectFile {

    private String id;

    /*路径*/
    private String path;

    /*  类型
       1：发包方上传的文件
       2：接包方上传的文件
       */
    private Integer type;

    /*项目id*/
    private Integer proid;
}
