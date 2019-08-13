package com.idtr.controller;

import com.idtr.common.ResponseCode;
import com.idtr.service.OrderService;
import com.idtr.utils.JsonUtils;
import com.idtr.utils.PathUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "OrderController", value = "/manage/order/*")
public class OrderController extends HttpServlet {

    private OrderService os=new OrderService();

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
                rs = searchAll(request);
                break;
            case"search":
                rs=searchOne(request);
                break;
            case"detail":
                rs=detailOne(request);
                break;
            case"send_goods":
                rs=sendGoods(request);
                break;

        }
        //返回响应数据
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().println(JsonUtils.obj2String(rs));
    }
    //发货
    private ResponseCode sendGoods(HttpServletRequest request) {
        //获取参数
        String orderNo = request.getParameter("orderNo");
        //调用业务层的方法
        ResponseCode rs=os.sendGoods(orderNo);
        return rs;
    }

    //查看订单详情
    private ResponseCode detailOne(HttpServletRequest request) {
        //获取参数
        String orderNo = request.getParameter("orderNo");
        //调用业务层
        ResponseCode rs=os.detailOne(orderNo);
        return rs;
    }

    // 按订单号查询
    private ResponseCode searchOne(HttpServletRequest request) {
        //获取参数
        String orderNo = request.getParameter("orderNo");

        //调用业务层
        ResponseCode rs=os.searchOne(orderNo);
        return rs;
    }

    //查询所有订单
    private ResponseCode searchAll(HttpServletRequest request) {
        //获取参数
        String pageSize = request.getParameter("pageSize");
        String pageNum= request.getParameter("pageNum");

        //调用业务层
        ResponseCode rs=os.searchAll();

        return rs;
    }


}
