package com.tomster.edu.web.controller;

import com.tomster.edu.model.User;
import com.tomster.edu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author meihewang
 * @date 2019/12/05  23:45
 */

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String login() {
        User user = userService.findUserById();
        System.out.println(user);
        return user.toString();
    }
}
