package com.qd.service.impl;

import com.qd.entity.Orders;
import com.qd.mapper.OrdersMapper;
import com.qd.service.IOrdersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lrr
 * @since 2024-10-16
 */
@Service
public class OrdersServiceImpl extends ServiceImpl<OrdersMapper, Orders> implements IOrdersService {

}
