package com.idtr.dao;

import com.idtr.common.ResponseCode;
import com.idtr.pojo.Order;
import com.idtr.utils.PoolUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class OrderDao {
    //查找所有订单
    public List<Order> searchAll() {
        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from orders";
        List<Order> li = null;
        try {
            li = qr.query(sql, new BeanListHandler<Order>(Order.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return li;
    }
    //按订单号查询
    public Order searchOne(String orderNo) {
        QueryRunner qr=new QueryRunner(PoolUtil.getCom());
        String sql="select * from orders where orderNo=?";
        Order o=null;
        try {
            o = qr.query(sql, new BeanHandler<>(Order.class),orderNo);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return o;
    }

    public Order detailOne(String orderNo) {
        QueryRunner qr=new QueryRunner(PoolUtil.getCom());
        String sql="select * from orders where orderNo=?";
        Order o=null;
        try {
            o = qr.query(sql, new BeanHandler<>(Order.class),orderNo);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return o;
    }
    //0是已发货，1是未发货；0是发货成功，1是发货失败
    public int sendGooods(String orderNo) {
        QueryRunner qr=new QueryRunner(PoolUtil.getCom());
        String sql="update orders set status=1 where orderNo=?";
        int o=0;
        try {
            o = qr.update(sql,orderNo);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return o;
    }
}


