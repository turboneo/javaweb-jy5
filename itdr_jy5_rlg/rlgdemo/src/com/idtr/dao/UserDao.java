package com.idtr.dao;

import com.idtr.pojo.Users;
import com.idtr.utils.PoolUtil;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class UserDao {
    //查找所有用户
    public List<Users> selectAll(String pageNum, String pageSize) {
        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from users";
        List<Users> li = null;
        try {
            li = qr.query(sql, new BeanListHandler<Users>(Users.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return li;
    }

    //根据用户名和密码查找用户
    public Users selectOne(String username, String password) {

        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from users where uname= ? and psd= ?";
        Users u = null;
        try {
            u = qr.query(sql, new BeanHandler<Users>(Users.class), username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }

    //根据ID查找用户
    public Users selectOne(Integer uid) {

        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from users where id= ?";
        Users u = null;
        try {
            u = qr.query(sql, new BeanHandler<Users>(Users.class), uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }

    //根据ID禁用用户
    public int disableByUid(Integer uid) {

        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "update users set stats=1 where id =?";
        Users u = null;
        int row = 0;
        try {
            row = qr.update(sql, uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return row;
    }

    //根据ID启用用户
    public int ableByUid(Integer uid) {

        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "update users set stats=0 where id =?";
        Users u = null;
        int row = 0;
        try {
            row = qr.update(sql, uid);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return row;
    }
    //根据用户名模糊查询
    public List<Users> findByText(String keyWord) {
        QueryRunner qr = new QueryRunner(PoolUtil.getCom());
        String sql = "select * from users where uname like ? ";
        String key = "%" + keyWord + "%";
        List<Users> li = null;
        try {
            li = qr.query(sql, new BeanListHandler<Users>(Users.class), key);
            System.out.println(li);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return li;

    }
}
