package com.idtr.service;

import com.idtr.common.ResponseCode;
import com.idtr.dao.OrderDao;
import com.idtr.pojo.Order;

import java.util.List;

public class OrderService {
    private OrderDao od = new OrderDao();

    public ResponseCode searchAll() {
        ResponseCode rs = null;
        List<Order> li = od.searchAll();
        rs = ResponseCode.successRS(li);
        return rs;

    }

    //按订单号查询一个订单
    public ResponseCode searchOne(String orderNo) {
        Order o = od.searchOne(orderNo);
        ResponseCode rs = ResponseCode.successRS(o);
        return rs;
    }

    //查询订单详情
    public ResponseCode detailOne(String orderNo) {
        Order o = od.detailOne(orderNo);
        ResponseCode rs = ResponseCode.successRS(o);
        return rs;
    }

    //发货,0发货成功，1发货失败;订单状态0为已发货，1为未发货
    public ResponseCode sendGoods(String orderNo) {
        Order o = od.searchOne(orderNo);
        ResponseCode rs = null;
        if (o == null) {
            rs = ResponseCode.defeatedRS(1, "发货失败", "订单号不存在");
        } else if (o.getStatus().equals("0")) {
            rs = ResponseCode.defeatedRS(1, "发货失败", "该订单已发货");
        } else {
            int a = od.sendGooods(orderNo);
            if (a == 0) {
                rs = ResponseCode.defeatedRS(1, "发货失败", "数据库有问题");
            } else {
                rs = ResponseCode.successRS(0, "发货成功");
            }
        }
        return rs;
    }

}
