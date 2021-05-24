/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.entities;

/**
 *
 * @author Muhammad bilal
 */
public class CategoryBean  {
    private int catId;
    private String catName;
    private String catDiscription;

    public CategoryBean(int catId, String catName, String catDiscription) {
        this.catId = catId;
        this.catName = catName;
        this.catDiscription = catDiscription;
    }

    public CategoryBean(String catName, String catDiscription) {
        this.catName = catName;
        this.catDiscription = catDiscription;
    }

    public CategoryBean() {
    }
    

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

    public String getCatDiscription() {
        return catDiscription;
    }

    public void setCatDiscription(String catDiscription) {
        this.catDiscription = catDiscription;
    }
    public String toString()
    {
        return catName;
    }
}
