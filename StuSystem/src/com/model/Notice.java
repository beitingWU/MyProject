package com.model;

/**
 * Notice entity. @author MyEclipse Persistence Tools
 */

public class Notice  implements java.io.Serializable {


    // Fields    

     private Integer nid;
     private Partyadministrator partyadministrator;
     private String createTime;
     private String title;
     private String content;


    // Constructors

    /** default constructor */
    public Notice() {
    }

	/** minimal constructor */
    public Notice(Partyadministrator partyadministrator) {
        this.partyadministrator = partyadministrator;
    }
    
    /** full constructor */
    public Notice(Partyadministrator partyadministrator, String createTime, String title, String content) {
        this.partyadministrator = partyadministrator;
        this.createTime = createTime;
        this.title = title;
        this.content = content;
    }

   
    // Property accessors

    public Integer getNid() {
        return this.nid;
    }
    
    public void setNid(Integer nid) {
        this.nid = nid;
    }

    public Partyadministrator getPartyadministrator() {
        return this.partyadministrator;
    }
    
    public void setPartyadministrator(Partyadministrator partyadministrator) {
        this.partyadministrator = partyadministrator;
    }

    public String getCreateTime() {
        return this.createTime;
    }
    
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
   








}