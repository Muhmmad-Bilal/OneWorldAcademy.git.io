/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.dao;
import com.tech.blog.entities.CategoryBean;
import com.tech.blog.entities.User;
import com.tech.blog.entities.contactBean;
import java.sql.*;
import java.util.Vector;
/**
 *
 * @author Muhammad bilal
 */
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    public boolean saveUser(User user)
    {
          boolean f=false;
     
        try
        {
            String query="insert into user(user_name,email,password,gender,about,user_type) values(?,?,?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5,user.getAbout());
            pstmt.setString(6,user.getUserType());
            pstmt.executeUpdate();
            f=true;
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    public boolean contactUs(contactBean contact)
    {
        boolean f=false;
        try
        {
            String query="insert into contact(first_name,last_name,email,subject) values(?,?,?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(query);
            pstmt.setString(1,contact.getFirstName());
            pstmt.setString(2, contact.getLastName());
            pstmt.setString(3, contact.getEmail());
            pstmt.setString(4, contact.getSubject());
            pstmt.executeUpdate();
            f=true;
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    public boolean addCategory(CategoryBean catBean)
    {
        boolean f=false;
        try
        {
            String query="insert into categories(category_name,category_discription) values(?,?)";
            PreparedStatement pstmt=this.con.prepareStatement(query);
            pstmt.setString(1, catBean.getCatName());
            pstmt.setString(2, catBean.getCatDiscription());
            pstmt.executeUpdate();
            f=true;
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    
    //by user email and password
    public User getUserByEmailAndPassword(String email,String password)
    {
        User user=null;
        try
        {
            
            String query="select * from User where email=? and password=?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1,email);
            pstmt.setString(2, password);
            
            ResultSet set=pstmt.executeQuery();
            System.out.println(email);
            System.out.println(password);
            if(set.next())
            {
                user=new User();
                
                user.setId(set.getInt("ID"));
         
                user.setName(set.getString("user_name"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setProfile(set.getString("profile"));
                user.setUserType(set.getString("user_type"));
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
    }
    
    public boolean updateUser(User user)
    { boolean f=false;
        try
        {
            String query="update user set user_name=?,email=?,password=?,gender=?,about=?,profile=? where ID=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setString(1, user.getName());
            p.setString(2, user.getEmail());
            p.setString(3,user.getPassword());
            p.setString(4, user.getGender());
            p.setString(5, user.getAbout());
            p.setString(6, user.getProfile());
            p.setInt(7, user.getId());
            p.executeUpdate();
            f=true;
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    public int countUser()
    {
        int num = 0;
        try
    {
       Statement st = con.createStatement();
            String myStatement = "select count(*) as total from User";
            ResultSet rs = st.executeQuery(myStatement);
            
            while(rs.next()){
                num = (rs.getInt(1));
            }
    }catch(Exception e)
    {
        e.printStackTrace();
    }
    return num;
    }
    public int countCategory()
    {
        int num=0;
        try
        {
            Statement st=con.createStatement();
            String query="select count(*) as total from categories";
            ResultSet rs=st.executeQuery(query);
            while(rs.next())
            {
                num=(rs.getInt(1));
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return num;
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
