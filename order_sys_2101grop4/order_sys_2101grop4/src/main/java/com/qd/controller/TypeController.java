package com.qd.controller;


import com.qd.common.result.ResultUtils;
import com.qd.entity.Users;
import com.qd.service.IUsersService;
import com.sun.javafx.css.CssError;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author lrr
 * @since 2024-10-16
 */
@RestController
@RequestMapping("/type")
public class TypeController {


    @Autowired
    IUsersService service;


    /**
     * 全查
     * @return
     */
    @GetMapping("/")
    public Object getList(){
        List<Users> list = service.list();
        return ResultUtils.returnSuccessLayui(list,list.size());
    }

    /**
     * 单查
     * @param id
     * @return
     */
    @GetMapping("/{id}")
    public Object getOne(@PathVariable("id") Integer id){
        Users u = service.getById(id);
        return ResultUtils.returnDataSuccess(u);
    }

    /**
     * 添加
     * @param u
     * @return
     */
    @PostMapping("/")
    public Object add(@RequestBody Users u){
        if(service.save(u)){
            return ResultUtils.returnDataSuccess(u);
        }
        return ResultUtils.returnFail("添加失败");
    }


    /**
     * 修改
     * @param u
     * @return
     */
    @PutMapping("/")
    public Object update(@RequestBody Users u){
        if(service.updateById(u)){
            return ResultUtils.returnDataSuccess(u);
        }
        return ResultUtils.returnFail("修改失败");
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @DeleteMapping("/")
    public Object del(@RequestParam Integer id){
        if(service.removeById(id)){
            return ResultUtils.returnSuccess();
        }
        return ResultUtils.returnFail("删除失败");
    }

}
