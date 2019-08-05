package com.idtr.controller;

import com.idtr.common.ResponseCode;
import com.idtr.pojo.Products;
import com.idtr.pojo.Users;
import com.idtr.service.ProductService;
import com.idtr.utils.PathUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
                rs = listDo(request);
                break;
//            case "login":
//                rs = loginDo(request);
//                break;
//            case "":
//                rs = disableuserDo(request);
//                break;

        }

        //返回响应数据
        response.getWriter().write(rs.toString());
    }

    //获取所有商品列表的请求
    private ResponseCode listDo(HttpServletRequest request) {
        ResponseCode rs = new ResponseCode();

        HttpSession session = request.getSession();
        Users user = (Users) session.getAttribute("user");

        if (user == null) {
            rs.setStatus(3);
            rs.setMag("请登录后此操作！");
            return rs;
        }
        if (user.getType() != 1) {
            rs.setStatus(3);
            rs.setMag("没有操作权限！");
            return rs;
        }

        //获取参数
        String pageSize = request.getParameter("pageSize");
        String pageNum = request.getParameter("pageNum");

        rs = ps.selectAll(pageSize, pageNum);
        return rs;
    }

}
