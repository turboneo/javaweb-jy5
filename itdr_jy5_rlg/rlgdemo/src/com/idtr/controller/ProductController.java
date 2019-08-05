package com.idtr.controller;

import com.idtr.common.ResponseCode;
import com.idtr.service.ProductService;
import com.idtr.utils.PathUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductController", value = "/manage/product/*")
public class ProductController extends HttpServlet {
    private ProductService ps = new ProductService();

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
                rs = getAll(request);
                break;
            case "search":
                rs = serchOne(request);
            case "detail":
                rs = showdetail(request);
            case "set_sale_status":
                rs = setStatus(request);

        }

        //返回响应数据
        response.getWriter().write(rs.toString());
    }
    //产品上下架，修改产品状态成功或者失败
    private ResponseCode setStatus(HttpServletRequest request) {
        //获取参数
        String productId=request.getParameter("productId");
        String status=request.getParameter("status");
        //调用业务层
        ResponseCode rs = ps.setStatus(status,productId);
        return rs;
    }

    //查看产品详情
    private ResponseCode showdetail(HttpServletRequest request) {
        //获取参数
        String productId = request.getParameter("productId");
        ResponseCode rs = null;
        //调用业务层
        rs = ps.showdetail(productId);
        return rs;
    }

    //通过商品ID或者name搜索某商品
    private ResponseCode serchOne(HttpServletRequest request) {
        //获取参数
        String productName = request.getParameter("productName");
        String productId = request.getParameter("productId");
        String pageSize = request.getParameter("pageSize");
        String pageNum = request.getParameter("pageNum");
        ResponseCode rs = null;

        //调用业务层
        rs = ps.serchOne(pageSize, pageNum, productId, productName);
        return rs;

    }


    //获取所有商品列表的请求
    private ResponseCode getAll(HttpServletRequest request) {
        //获取参数
        String pageSize = request.getParameter("pageSize");
        String pageNum = request.getParameter("pageNum");
        ResponseCode rs = null;

        //调用业务层
        rs = ps.getAll(pageSize, pageNum);
        return rs;

    }

}
