package com.idtr.dao;

import com.idtr.common.ResponseCode;
import com.idtr.pojo.Product;
import com.idtr.utils.PoolUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ProductDao {
    //查找所有商品
    public List<Product> selectAll(String pageNum, String pageSize) {
        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from product";
        List<Product> li = null;
        try {
            li = qr.query(sql, new BeanListHandler<Product>(Product.class));
            System.out.println(li);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return li;
    }

    //查找一个商品
    public Product selectOne(String pageNum, String pageSize, String productId, String productName) {
        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from product where categoryId=?";
        Product p = null;
        try {
            p = qr.query(sql, new BeanHandler<Product>(Product.class), productId, productName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    //查找一个商品（重载）
    public Product selectOne(String pageNum, String pageSize, String productName) {
        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from product where name=%?%";
        Product p = null;
        try {
            p = qr.query(sql, new BeanHandler<Product>(Product.class), productName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }
    //查找一个商品（重载）为了产品上下架重载的方法
    public Product selectOne(String productId) {
        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from product where categoryId=?";
        Product p = null;
        try {
            p = qr.query(sql, new BeanHandler<Product>(Product.class), productId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    public Product showdetail(String productId) {
        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from product where categoryId=?";
        Product p = null;
        try {
            p = qr.query(sql, new BeanHandler<>(Product.class), productId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    public int setStatus(String status, String productId) {
        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "UPDATE product SET status=? WHERE categoryId=?";
        int p = 0;
        try {
            p = qr.update(sql,status, productId);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }
}
