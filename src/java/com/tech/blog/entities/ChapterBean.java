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
public class ChapterBean {
    private int catId;
    private int chapId;
    private int chapNo;
    private String chapName;
    private String chapDiscription;

    public ChapterBean(int catId, int chapId, int chapNo, String chapName, String chapDiscription) {
        this.catId = catId;
        this.chapId = chapId;
        this.chapNo = chapNo;
        this.chapName = chapName;
        this.chapDiscription = chapDiscription;
    }

    public ChapterBean(int chapId, int chapNo, String chapName, String chapDiscription) {
        this.chapId = chapId;
        this.chapNo = chapNo;
        this.chapName = chapName;
        this.chapDiscription = chapDiscription;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public int getChapId() {
        return chapId;
    }

    public void setChapId(int chapId) {
        this.chapId = chapId;
    }

    public int getChapNo() {
        return chapNo;
    }

    public void setChapNo(int chapNo) {
        this.chapNo = chapNo;
    }

    public String getChapName() {
        return chapName;
    }

    public void setChapName(String chapName) {
        this.chapName = chapName;
    }

    public String getChapDiscription() {
        return chapDiscription;
    }

    public void setChapDiscription(String chapDiscription) {
        this.chapDiscription = chapDiscription;
    }
       
}
