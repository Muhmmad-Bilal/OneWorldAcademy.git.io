/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.entities;
import java.sql.*;
/**
 *
 * @author Muhammad bilal
 */
public class User {
    private int id;
    private String name;
    private String  email;
    private String password;
    private String gender;
    private Timestamp date;
    private String profile;
 private String about;
 private String userType;

    public User() {
    }

 
 
 
    public User(String name, String email, String password, String gender, String about,String userType) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.date = date;
        this.about = about;
        this.userType=userType;
    }
 
 
    public User(int id, String name, String email, String password, String gender, Timestamp date, String about,String profile,String userType) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.date = date;
        this.about = about;
        this.userType=userType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }
    
    
    
   
}
