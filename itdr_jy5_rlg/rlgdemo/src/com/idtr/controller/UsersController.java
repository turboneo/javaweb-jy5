package com.idtr.controller;

import com.idtr.common.ResponseCode;
import com.idtr.pojo.Users;
import com.idtr.service.UserService;
import com.idtr.utils.JsonUtils;
import com.idtr.utils.PathUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/manage/user/*")
public class UsersController extends HttpServlet {
    private UserService uc = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //处理乱码
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String pathInfo = request.getPathInfo();
        String path = PathUtil.getPath(pathInfo);

        ResponseCode rs = null;
        //判断是什么请求

        switch (path) {
            case "list":
                rs = listDo(request,response);
                break;
            case "login":
                rs=loginDo(request,response);
                break;
            case "disableuser":
                rs = disableuserDo(request);
                break;
            case"find":
                rs=findByText(request);
                break;
            case"ableuser":
                rs=ableuserDo(request);
                break;
//            case"yz":
//                yzDO(request,response);
//                break;
        }

        //返回响应数据
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(JsonUtils.obj2String(rs));
    }

    //获取所有用户列表的请求
    private ResponseCode listDo(HttpServletRequest request,HttpServletResponse response) {
        ResponseCode rs = new ResponseCode();


        //获取参数
        String pageSize = request.getParameter("pageSize");
        String pageNum = request.getParameter("pageNum");

        rs = uc.selectAll(pageSize, pageNum);

        return rs;
    }

    //获取用户登录的请求
    private ResponseCode loginDo(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        //获取参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        ResponseCode rs = uc.selectOne(username, password);

        //获取一个session对象
        HttpSession session = request.getSession();
        session.setAttribute("user", rs.getData());
        //调用业务层处理业务
        return rs;


    }

    //禁用用户的请求
    private ResponseCode disableuserDo(HttpServletRequest request) {
        //获取参数
        String uid = request.getParameter("uid");
        ResponseCode rs = uc.disableByUid(uid);
        return rs;

    }
    //启用用户的请求
    private ResponseCode ableuserDo(HttpServletRequest request) {
        //获取参数
        String uid = request.getParameter("uid");
        ResponseCode rs = uc.ableByUid(uid);
        return rs;

    }
    //根据用户ID查看用户详情
    //根据用户ID查看用户详情

    //根据内容模糊查询
    private ResponseCode findByText(HttpServletRequest request) {
        //获取参数
        String keyWord = request.getParameter("key");

        ResponseCode rs = null;

        //调用业务层
        rs = uc.findByText(keyWord);
        return rs;

    }
}

