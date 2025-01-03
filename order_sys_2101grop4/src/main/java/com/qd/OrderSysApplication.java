package com.qd;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@MapperScan("com.qd.mapper")
@SpringBootApplication
public class OrderSysApplication {

    public static void main(String[] args) {
        SpringApplication.run(OrderSysApplication.class, args);
    }

}
