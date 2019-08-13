package com.idtr.controller;

import com.idtr.common.ResponseCode;
import com.idtr.service.CategoryService;
import com.idtr.utils.JsonUtils;
import com.idtr.utils.PathUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CategoryController",value = "/manage/category/*")
public class CategoryController extends HttpServlet {

    private CategoryService cs=new CategoryService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
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
            case "get_category":
                rs = getCategory(request);
                break;
            case"add_category":
                rs=addCategory(request);
                break;
            case"set_category_name":
                rs=setCategory(request);
                break;


        }
        //返回响应数据
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().println(JsonUtils.obj2String(rs));
    }
    //修改品类名字
    private ResponseCode setCategory(HttpServletRequest request) {
       //获取参数
        String id = request.getParameter("id");
        int i = Integer.parseInt(id);
        String name = request.getParameter("name");
        //调用业务层方法
        ResponseCode rs=cs.setCategory(name,i);
        return rs;
    }

    //增加节点
    private ResponseCode addCategory(HttpServletRequest request) {
        //获取参数
        String parentId = request.getParameter("parentId");
        int parseInti = Integer.parseInt(parentId);
        String name = request.getParameter("name");
        //调用业务层的方法
        ResponseCode rs=cs.addCategory(parseInti,name);
        return rs;
    }
    //根据ID获取品类的子节点
    private ResponseCode getCategory(HttpServletRequest request) {
        //获取参数
        String id = request.getParameter("id");
        int i = Integer.parseInt(id);

        //调用业务层的方法
        ResponseCode rs=cs.getCategory(i);
        return rs;
    }
}
