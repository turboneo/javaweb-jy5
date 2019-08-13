package com.idtr.service;

import com.idtr.common.Const;
import com.idtr.common.ResponseCode;
import com.idtr.dao.UserDao;
import com.idtr.pojo.Users;

import java.util.List;

public class UserService {
    UserDao ud =new UserDao();
    public ResponseCode selectAll(String pageSize, String pageNum) {
        //非空判断
        if (pageSize==null||pageSize.equals("")){
            pageSize="10";
        }
        if (pageNum==null||pageNum.equals("")){
            pageNum="1";
        }

        List<Users>li=ud.selectAll(pageNum,pageSize);
        //如果集合为空呢？
        ResponseCode rs=ResponseCode.successRS(li);

        return rs;
    }

    public ResponseCode selectOne(String username, String password) {
        ResponseCode rs=new ResponseCode();

        if (username==null||password==null){
            rs.setStatus(1);
            rs.setMag("账号或密码错误");
            return rs;
        }
        if (username.equals("")||password.equals("")){
            rs.setStatus(10);
            rs.setMag("账户名或密码不能为空");
            return rs;
        }
        //查找是否有这样一个用户
        Users u=ud.selectOne(username,password);

        //如果用户不存在
        if (u==null){
            rs.setStatus(1);
            rs.setMag("账户或密码错误");
            return rs;
        }

        //如果用户存在，判断用户权限

        if (u.getType()!=1){
            rs.setStatus(2);
            rs.setMag("没有权限");
            return rs;
        }
        //如果用户存在，有权限，判断是否被禁用
        if (u.getStats()==1){
            rs.setStatus(2);
            rs.setMag("用户被禁用！");
            return rs;
        }
        rs.setStatus(0);
        rs.setData(u);
        return rs;
    }
    //根据用户ID禁用用户的方法
    public ResponseCode disableByUid(String uids) {
        ResponseCode rs=new ResponseCode();

        if (uids==null||uids.equals("")){
            rs.setStatus(Const.USER_PARAMETER_CODE);
            rs.setMag(Const.USER_PARAMETER_MSG);
            return rs;
        }

        //字符串转数值
        Integer uid=null;
        try {
            uid=Integer.parseInt(uids);
        }catch (Exception e){
            rs.setStatus(105);
            rs.setMag("输入非法参数！");
            return rs;
        }

        //查找是否有这样一个用户
        Users u=ud.selectOne(uid);

        //如果用户不存在
        if (u==null){
            rs.setStatus(Const.USER_NO_CODE);
            rs.setMag(Const.USER_NO_MSG);
            return rs;
        }

        //用户禁用情况，如果status已经是1，说明已经被禁用，显示禁用失败
        if (u.getStats()==1){
            rs.setStatus(120);
            rs.setMag("用户已是禁用状态，无法再次禁用！");
            return rs;
        }

        //如果不是1，禁用用户
        int row=ud.disableByUid(uid);

        if (row<=0){
            rs.setStatus(121);
            rs.setMag("数据有误，用户禁用失败");
            return rs;
        }else{
            rs.setStatus(100);
            rs.setData(row);
            rs.setMag("用户禁用成功");
            return  rs;
        }

    }
    //根据用户ID启用用户的方法
    public ResponseCode ableByUid(String uids) {
        ResponseCode rs=new ResponseCode();

        if (uids==null||uids.equals("")){
            rs.setStatus(Const.USER_PARAMETER_CODE);
            rs.setMag(Const.USER_PARAMETER_MSG);
            return rs;
        }

        //字符串转数值
        Integer uid=null;
        try {
            uid=Integer.parseInt(uids);
        }catch (Exception e){
            rs.setStatus(105);
            rs.setMag("输入非法参数！");
            return rs;
        }

        //查找是否有这样一个用户
        Users u=ud.selectOne(uid);

        //如果用户不存在
        if (u==null){
            rs.setStatus(Const.USER_NO_CODE);
            rs.setMag(Const.USER_NO_MSG);
            return rs;
        }

        //用户启用情况，如果status已经是0，说明已经被启用，显示启用失败
        if (u.getStats()==0){
            rs.setStatus(122);
            rs.setMag("用户已经是启用状态，无法再次启用！");
            return rs;
        }

        //如果不是0，启用用户
        int row=ud.ableByUid(uid);

        if (row<=0){
            rs.setStatus(123);
            rs.setMag("数据有误，用户启用失败");
            return rs;
        }
        rs.setStatus(100);
        rs.setData(row);
        rs.setMag("用户启用成功");
        return  rs;
    }

    //根据商品名模糊查询
    public ResponseCode findByText(String keyWord) {
        //非空判断没写
        ResponseCode rs=null;
        List<Users> li=ud.findByText(keyWord);
        rs=ResponseCode.successRS(li);
        return rs;
    }
}
