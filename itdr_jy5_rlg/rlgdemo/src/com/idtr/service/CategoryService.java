package com.idtr.service;

import com.idtr.common.ResponseCode;
import com.idtr.dao.CategoryDao;
import com.idtr.pojo.Category;

import java.util.List;

public class CategoryService {
    CategoryDao cd = new CategoryDao();

    public ResponseCode getCategory(Integer id) {
        List<Category> li = cd.getCategory(id);
        ResponseCode rs=null;
        if (li == null || li.size()==0) {
            rs = ResponseCode.defeatedRS(1, "未找到该品类");
        } else {
            rs = ResponseCode.successRS(0, li);
        }
        return rs;
    }
    //增加节点
    public ResponseCode addCategory(Integer parentId,String name) {
        int a=cd.addCategory(parentId,name);
        ResponseCode rs=null;
        if (a==1){
            rs=ResponseCode.successRS(0,"添加品类成功");
        }else if (a==0){
            rs=ResponseCode.defeatedRS(1,"添加品类失败");
        }
        return  rs;
    }

    public ResponseCode setCategory(String name,Integer id) {
        int i = cd.setCategory(name,id);
        ResponseCode rs=null;
        if (i==1){
            rs=ResponseCode.successRS(0,"更新品类名字成功");
        }else if (i==0){
            rs=ResponseCode.defeatedRS(1,"更新品类名字失败");
        }
        return rs;
    }
}
