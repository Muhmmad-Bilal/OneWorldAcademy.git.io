/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.helper;
import java.sql.*;
/**
 *
 * @author Muhammad bilal
 */
public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection()
    {
        try
        {
          if(con==null)
          {
              //Driver Class Load
               Class.forName("net.ucanaccess.jdbc.UcanaccessDriver"); 
            //Connection
               con=DriverManager.getConnection("jdbc:ucanaccess://E:/TechBlog.accdb");
            
          }
          
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return con;
    }
    
}
