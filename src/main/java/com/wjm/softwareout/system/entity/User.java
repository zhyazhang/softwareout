package com.wjm.softwareout.system.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    /*用户编号*/
    private Integer id;
    /*用户名*/
    private String name;
    /*登录名*/
    private String loginname;
    /*地址*/
    private String address;
    /*用户性别*/
    private Integer sex;
    /*备注信息*/
    private String remark;
    /*登录密码*/
    private String pwd;

    /*入职时间*/
    @DateTimeFormat(pattern = "yyyy-MM-dd") //接收前端提交的数据格式化
    @JsonFormat(pattern = "yyyy-MM-dd",timezone = "GMT+8") //响应给前端的数据格式化
    private Date hiredate;

    /*状态：0，不可用 1，可用*/
    private Integer available;
    /*用户类型*/
    private Integer type;
    /*用户头像*/
    private String imgpath;
    /*加密密码使用的盐*/
    private String salt;

    public User() {
    }

    public User(Integer id, String name, String loginname, String address, Integer sex, String remark, String pwd,
                Date hiredate, Integer available,  Integer type, String imgpath, String salt) {
        this.id = id;
        this.name = name;
        this.loginname = loginname;
        this.address = address;
        this.sex = sex;
        this.remark = remark;
        this.pwd = pwd;
        this.hiredate = hiredate;
        this.available = available;
        this.type = type;
        this.imgpath = imgpath;
        this.salt = salt;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", loginname='" + loginname + '\'' +
                ", address='" + address + '\'' +
                ", sex=" + sex +
                ", remark='" + remark + '\'' +
                ", pwd='" + pwd + '\'' +
                ", hiredate=" + hiredate +
                ", available=" + available +
                ", type=" + type +
                ", imgpath='" + imgpath + '\'' +
                ", salt='" + salt + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Date getHiredate() {
        return hiredate;
    }

    public void setHiredate(Date hiredate) {
        this.hiredate = hiredate;
    }

    public Integer getAvailable() {
        return available;
    }

    public void setAvailable(Integer available) {
        this.available = available;
    }


    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getImgpath() {
        return imgpath;
    }

    public void setImgpath(String imgpath) {
        this.imgpath = imgpath;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }
}