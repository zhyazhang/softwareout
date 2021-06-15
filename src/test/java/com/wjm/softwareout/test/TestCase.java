package com.wjm.softwareout.test;

import com.wjm.softwareout.system.constant.SysConstant;
import com.wjm.softwareout.system.entity.User;
import com.wjm.softwareout.system.service.UserService;
import com.wjm.softwareout.system.utils.MD5Util;
import com.wjm.softwareout.system.utils.RandomUtil;
import com.wjm.softwareout.system.vo.UserVo;
import org.springframework.beans.BeanUtils;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @ClassName TestCase
 * @Description TODO
 *
 * @Date 2019/07/18 15:29
 * @Version 1.0
 **/
public class TestCase {
    public static void main(String[] args) {

        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        UserService userService = context.getBean(UserService.class);

        List<User> allUsers = userService.getAllUsers();
        for (User user : allUsers) {
            String salt = RandomUtil.generateRandomUUID();
            user.setSalt(salt);
            user.setPwd(MD5Util.encodeUserPwdWithMD5(SysConstant.DEFAULT_USER_PWD, salt, SysConstant.HASHITERATIONS));
            UserVo userVo = new UserVo();
            BeanUtils.copyProperties(user, userVo);
            /**
             * 此处更新的时候需要注意，由于BeanValidator依赖servlet 容器，这里如果批量更新需要将 BeanValidator.check(userVo);
             * 注释即可，也可以添加对应的依赖
             */
            userService.modifyUser(userVo);
            System.out.println("userVo: "+userVo.toString());
        }
    }
}
