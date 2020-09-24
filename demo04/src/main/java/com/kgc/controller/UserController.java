package com.kgc.controller;

import com.kgc.pojo.User;
import com.kgc.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * @author 张康硕
 * @create 2020-09-24 9:28
 */
@Controller
public class UserController {
    @RequestMapping("/login")
    public String Login(){
        return "/jsp/login";
    }
    @Resource
    UserService userService;

    @RequestMapping("/dologin")
    public String doLogin(String name, String password, Model model, HttpSession session) {
        User User = userService.selectByName(name);
        System.out.println(name);
        System.out.println(password);
        if (User == null) {
            model.addAttribute("error", "用户不存在");
            return "/jsp/login";
        } else if (User.getPassword().equals(password) == false) {
            model.addAttribute("error", "用户密码错误");
            return "/jsp/login";
        } else {
            session.setAttribute("UserSession", User);
            return "/jsp/index";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "/jsp/backendlogin";
    }
}
