package com.idtr.service;

import com.idtr.common.ResponseCode;
import com.idtr.dao.ProductDao;
import com.idtr.pojo.Products;

import java.util.List;

public class ProductService {
    ProductDao pd=new ProductDao();
    public ResponseCode selectAll(String pageSize, String pageNum) {
            //非空判断
            if (pageSize==null||pageSize.equals("")){
                pageSize="10";
            }
            if (pageNum==null||pageNum.equals("")){
                pageNum="1";
            }

            List<Products> li=pd.selectAll(pageNum,pageSize);
            //如果集合为空呢？
            ResponseCode rs=new ResponseCode();
            rs.setStatus(0);
            rs.setData(li);
            return rs;

    }
}
