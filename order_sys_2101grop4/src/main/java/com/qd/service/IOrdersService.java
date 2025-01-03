package com.qd.service;

import com.github.yulichang.base.MPJBaseService;
import com.qd.entity.Orders;
import com.baomidou.mybatisplus.extension.service.IService;
import com.qd.entity.OrdersDto;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lrr
 * @since 2024-10-16
 */
public interface IOrdersService extends MPJBaseService<Orders> {

    List<Orders> getList(OrdersDto orders);
    boolean addOrderAndDetail (Orders o);
}
