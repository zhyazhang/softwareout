package com.wjm.softwareout.system.dao;

import com.wjm.softwareout.system.entity.LogLogin;
import com.wjm.softwareout.system.vo.LogLoginVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LogLoginMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LogLogin record);

    int insertSelective(LogLogin record);

    LogLogin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LogLogin record);

    int updateByPrimaryKey(LogLogin record);

    List<LogLogin> selectAllLoginLogByParams(@Param("logLoginVo") LogLoginVo logLoginVo);
}