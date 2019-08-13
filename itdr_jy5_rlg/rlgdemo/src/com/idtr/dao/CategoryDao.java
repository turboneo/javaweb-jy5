package com.idtr.dao;

import com.idtr.common.ResponseCode;
import com.idtr.pojo.Category;
import com.idtr.utils.PoolUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CategoryDao {
    //获取品类子节点(平级)
    public List<Category> getCategory(Integer id) {
        QueryRunner qr=new QueryRunner(PoolUtil.getCom());
        String sql="select * from category where parentId=?";
        List<Category> li=null;
        try {
            li = qr.query(sql, new BeanListHandler<Category>(Category.class), id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return li;

    }

    public int addCategory(Integer parentId,String name) {
        QueryRunner qr=new QueryRunner(PoolUtil.getCom());
        String sql="insert into category values (null,?,?,null,null)";
        int i=0;
        try {
            i = qr.update(sql, parentId, name);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }

    public int setCategory(String name,Integer id) {
        QueryRunner qr=new QueryRunner(PoolUtil.getCom());
        String sql="update category set name=? where id=?";
        int a=0;
        try {
            a = qr.update(sql,name,id);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return a;
    }
}
