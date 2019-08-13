package com.idtr.controller;

import com.idtr.common.ResponseCode;
import com.idtr.service.ProductService;
import com.idtr.utils.JsonUtils;
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
                break;
            case "detail":
                rs = showdetail(request);
                break;
            case "set_sale_status":
                rs = setStatus(request);
                break;
            case"save":
                rs=save(request);
                break;
            case"find":
                rs=findByText(request);
                break;

        }

        //返回响应数据
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().println(JsonUtils.obj2String(rs));
    }
    //新增或更新产品
    private ResponseCode save(HttpServletRequest request) {
        //获取参数
        String categoryId = request.getParameter("categoryId");
        String name = request.getParameter("name");
        String subtitle = request.getParameter("subtitle");
        String price = request.getParameter("price");
        String status = request.getParameter("status");

        //调用业务层
        ResponseCode rs = ps.save(categoryId,name,subtitle,price,status);
        return rs;
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
        String productId = request.getParameter("productId");
//        String pageSize = request.getParameter("pageSize");
//        String pageNum = request.getParameter("pageNum");
        ResponseCode rs = null;

        //调用业务层
        rs = ps.serchOne(productId);
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

    //根据内容模糊查询
    private ResponseCode findByText(HttpServletRequest request) {
        //获取参数
        String keyWord = request.getParameter("key");

        ResponseCode rs = null;

        //调用业务层
        rs = ps.findByText(keyWord);
        return rs;

    }

}
