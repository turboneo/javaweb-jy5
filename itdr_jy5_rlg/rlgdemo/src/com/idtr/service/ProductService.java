package com.idtr.service;

import com.idtr.common.ResponseCode;
import com.idtr.dao.ProductDao;
import com.idtr.pojo.Product;

import java.util.List;

public class ProductService {
    ProductDao pd=new ProductDao();

    public ResponseCode getAll(String pageSize,String pageNum) {
        ResponseCode rs=null;
        List<Product> li= pd.selectAll(pageNum,pageSize);
        rs=ResponseCode.successRS(li);
        return rs;
    }


    public ResponseCode serchOne(String pageSize,String pageNum,String productId,String productName) {
        ResponseCode rs=null;
        Product p= pd.selectOne(pageNum,pageSize,productId,productName);
        rs=ResponseCode.successRS(p);
        return rs;
    }

    public ResponseCode showdetail(String productId) {
        ResponseCode rs=null;
        Product p=pd.showdetail(productId);
        rs=ResponseCode.successRS(p);
        return rs;

    }

    public ResponseCode setStatus(String status, String productId) {
        Product p=pd.selectOne(productId);
        p.getCategoryId();
        int a = pd.setStatus(status,productId);
        ResponseCode rs=null;
        if (a==1){
            rs=ResponseCode.successRS("修改产品状态成功");
            return rs;
        }else if (a==0){
            rs=ResponseCode.successRS("修改产品状态失败");
        }

        return rs;
    }
}
