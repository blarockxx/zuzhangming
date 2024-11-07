package com.qd.controller;

import com.qd.common.result.ResultUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {


    @GetMapping("/sayHi")
    public Object sayHi(Integer id,String name){
        System.out.println("传过来的参数是"+id);
        System.out.println("传过来的参数是"+name);
        return ResultUtils.returnFail();
    }






}
