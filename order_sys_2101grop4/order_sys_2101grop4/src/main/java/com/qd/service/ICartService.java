package com.qd.service;

import com.qd.entity.Cart;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lrr
 * @since 2024-10-16
 */
public interface ICartService extends IService<Cart> {

    List<Cart> getList(Integer deskId);
}
