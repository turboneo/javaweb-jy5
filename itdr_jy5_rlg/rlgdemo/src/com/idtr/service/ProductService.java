package com.idtr.service;

import com.idtr.common.ResponseCode;
import com.idtr.dao.ProductDao;
import com.idtr.pojo.Product;

import java.util.List;

public class ProductService {
    ProductDao pd = new ProductDao();

    public ResponseCode getAll(String pageSize, String pageNum) {
        ResponseCode rs = null;
        List<Product> li = pd.selectAll(pageNum, pageSize);
        if (li == null) {
            rs = ResponseCode.defeatedRS(1, "数据有误");
        } else {
            rs = ResponseCode.successRS(0,li,"查询成功");
        }
        return rs;
    }


    public ResponseCode serchOne(String productId) {
        ResponseCode rs = null;
        Product p = pd.selectOne(productId);
        rs = ResponseCode.successRS(p);
        return rs;
    }

    public ResponseCode showdetail(String productId) {
        ResponseCode rs = null;
        Product p = pd.showdetail(productId);
        rs = ResponseCode.successRS(p);
        return rs;

    }

    //1代表产产品下架状态，0代表产品上架状态；在方法中，1代表上下架失败，0代表上下架成功
    public ResponseCode setStatus(String status, String productId) {
        Product p = pd.selectOne(productId);
        ResponseCode rs = null;
        int a = pd.setStatus(status, productId);
        if (p == null) {
            rs = ResponseCode.defeatedRS(222, "修改产品状态失败", "数据有误！");
        } else if (p.getCategoryId().equals(productId)) {
            if (p.getStatus().equals(status)) {
                if (p.getStatus().equals("1")) {
                    rs = ResponseCode.defeatedRS(220, "修改产品状态失败", "产品已下架，无需再次下架");
                } else if (p.getStatus().equals("0")) {
                    rs = ResponseCode.defeatedRS(221, "修改产品状态失败", "产品已上架，无需再次上架");
                }
            } else if (status.equals("0")) {
                rs = ResponseCode.successRS(200, "修改产品状态成功", "产品上架");
            } else if (status.equals("1")) {
                rs = ResponseCode.successRS(201, "修改产品状态成功", "产品下架");
            }
        }

        return rs;
    }

    //新增产品
    public ResponseCode save(String categoryId, String name, String subtitle, String price, String status) {
        ResponseCode rs = null;
        int i = pd.insert(categoryId, name, subtitle, price, status);
        if (i <= 0) {
            rs = ResponseCode.defeatedRS(1, "更新产品失败");
        } else {
            rs = ResponseCode.successRS(0, "更新产品成功");
        }

        return rs;
    }

    //根据商品名模糊查询
    public ResponseCode findByText(String keyWord) {
        //非空判断没写
        ResponseCode rs = null;
        List<Product> li = pd.findByText(keyWord);
        rs = ResponseCode.successRS(li);
        return rs;
    }
}
