package com.idtr.dao;

import com.idtr.pojo.Products;
import com.idtr.utils.PoolUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ProductDao {
    //查找所有商品
    public List<Products> selectAll(String pageNum, String pageSize) {
        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from product";
        List<Products> li = null;
        try {
            li = qr.query(sql, new BeanListHandler<Products>(Products.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return li;
    }
}
