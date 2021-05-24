/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 *
 * @author Muhammad bilal
 */
public class Helper {
    public static boolean deleteFile(String path)
    {
        boolean f=false;
                try
                {
                    File file=new File(path);
                  f=  file.delete();
                  
                }catch(Exception e)
                {
                    e.printStackTrace();
                }
                return f;
    }
    public static boolean saveFile(InputStream in,String path)
    {
        boolean f=false;
        try
        {
            byte[] b=new byte[in.available()];
            in.read(b);
            FileOutputStream out=new FileOutputStream(path);
            out.write(b);
            
            
            out.close();
            out.flush();
            f=true;
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
}
