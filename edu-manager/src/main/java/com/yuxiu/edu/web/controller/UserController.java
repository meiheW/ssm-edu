package com.yuxiu.edu.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author meihewang
 * @date 2019/12/05  23:45
 */

@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/login")
    public String login() {
        System.out.println("...");
        return null;
    }
}
