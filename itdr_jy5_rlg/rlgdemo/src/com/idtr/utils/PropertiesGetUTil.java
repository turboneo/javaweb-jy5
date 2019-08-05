package com.idtr.utils;

import java.io.InputStream;
import java.util.Properties;

public class PropertiesGetUTil {
    public static String getValue(String key){
        Properties ps=new Properties();
        InputStream in=PropertiesGetUTil.
        class.getClassLoader().getResourceAsStream("const.properties");
        try {
           ps.load(in);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String value=ps.getProperty(key);
        return  value;
    }
}
