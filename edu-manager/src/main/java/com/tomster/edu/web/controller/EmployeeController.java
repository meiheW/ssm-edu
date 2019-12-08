package com.tomster.edu.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author meihewang
 * @date 2019/12/08  17:36
 */
@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @RequestMapping("/manage")
    public String manage(){
        return "employee/manage";
    }

    @RequestMapping("/info")
    public String info(){
        return "employee/info";
    }

    @RequestMapping("/edit")
    public String edit(){
        return "employee/edit";
    }



}
