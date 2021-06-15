package com.wjm.softwareout.system.controller;

import com.wjm.softwareout.system.service.ProjectService;
import com.wjm.softwareout.system.service.UserService;
import com.wjm.softwareout.system.utils.ActiveUser;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Objects;

/**
 * @ClassName DeskController
 * @Description TODO
 * @Date 2019/07/06 9:00
 * @Version 1.0
 **/
@Controller
@RequestMapping("/desk")
@Api(tags = "工作台模块接口")
public class DeskController {

    @Autowired
    private ProjectService projectService;

    @Autowired
    private UserService userService;

    /**
     * 功能描述: 跳转到工作台页面
     *
     * @param
     * @return java.lang.String
     * @Date 9:01 2019/07/06
     */
    @RequestMapping(value = "toDeskManager.page", method = RequestMethod.GET)
    @ApiOperation(value = "工作台页面", notes = "跳转到工作台页面")
    public String toDeskManager(Model model) {
        int projectCount = projectService.projectCount();
        int unReceiveCount = projectService.projectUnReceiveCount();
        int userCount = userService.userCount();
        model.addAttribute("projectCount", projectCount);
        model.addAttribute("unReceiveCount", unReceiveCount);
        model.addAttribute("userCount", userCount);

        String role = ((ActiveUser) SecurityUtils.getSubject().getPrincipal()).getRoles().get(0);


        if (Objects.equals("超级管理员", role)) {
            return "system/main/deskManager";

        } else {
            return "system/main/homePage";

        }


    }

}
