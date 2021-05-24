/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;

import com.tech.blog.entities.CategoryBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

/**
 *
 * @author Muhammad bilal
 */
public class ShowCategory {
     private Connection con;
    ShowCategory(Connection con)
    {
        this.con=con;
    }
    public Vector getAllCategories()
    {
        Vector v =new Vector(); 

        try
        {
            
            String query="select * from categories";
            Statement st=this.con.createStatement();
            ResultSet set=st.executeQuery(query);
            while(set.next())
            {
             int cid=set.getInt("cat_id");
             String catName=set.getString("category_name");
             String catDiscription=set.getString("category_discription");
             CategoryBean category=new CategoryBean(cid,catName,catDiscription);
                v.add(category);     
            }
        }catch(Exception e)
        {
            e.printStackTrace();
            
        }
        return v;
    }
    
}
