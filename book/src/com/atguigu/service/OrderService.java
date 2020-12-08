package com.atguigu.service;

import com.atguigu.pojo.Cart;

/**
 * @author LXW
 */

public interface OrderService {
    public String createOrder(Cart cart,Integer userId);
}
