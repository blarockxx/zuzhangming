package com.qd.controller;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.github.yulichang.toolkit.JoinWrappers;
import com.github.yulichang.wrapper.MPJLambdaWrapper;
import com.qd.common.result.ResultUtils;
import com.qd.entity.OrderDetail;
import com.qd.entity.Orders;
import com.qd.entity.OrdersDto;
import com.qd.service.IOrdersService;
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
@RequestMapping("/orders")
public class OrdersController {

    @Autowired
    IOrdersService service;


    /**
     * 多条件、分页、多表连接，查询
     * @param orders
     * @return
     */
    @GetMapping("/")
    public Object getList(OrdersDto orders){
       List<Orders> list =  service.getList(orders); //当前页的数据
       orders.setPage(null);
       orders.setLimit(null);
       int total =  service.getList(orders).size(); //总条数
       return ResultUtils.returnSuccessLayui(list,total);
    }



    @GetMapping("/getListFront")
    public Object getListFront(@RequestParam Integer deskId){
        MPJLambdaWrapper<Orders> wrapper = JoinWrappers.lambda(Orders.class)
                .selectAll(Orders.class)//查询订单表全部字段
                .selectCollection(OrderDetail.class,Orders::getOrderDetailList) //查询明细表中的数据
                .leftJoin(OrderDetail.class, OrderDetail::getOrderId, Orders::getId); //两表连查的条件
        //指定桌号
        wrapper.eq("desk_id",deskId);
        //按照订单时间倒序
        wrapper.orderByDesc("order_time");
        List<Orders> list = service.selectJoinList(Orders.class, wrapper);
        return ResultUtils.returnDataSuccess(list);
    }
    /**
     * 修改
     * @param o
     * @return
     */
    @PutMapping("/")
    public Object update(@RequestBody Orders o){
        if(service.updateById(o)){
            return ResultUtils.returnDataSuccess(o);
        }
        return ResultUtils.returnFail("修改失败");
    }



    /**
     * 添加
     * @param o
     * @return
     */
    @PostMapping("/")
    public Object add(@RequestBody Orders o){
        if(service.addOrderAndDetail(o)){
            return ResultUtils.returnSuccess();
        }
        return ResultUtils.returnFail("添加失败");
    }


}
