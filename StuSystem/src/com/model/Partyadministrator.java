package com.model;

import java.util.HashSet;
import java.util.Set;


/**
 * Partyadministrator entity. @author MyEclipse Persistence Tools
 */

public class Partyadministrator  implements java.io.Serializable {


    // Fields    

     private Integer pid;
     private String sex;
     private String password;
     private String nation;
     private String tel;
     private Set memberstyles = new HashSet(0);
     private Set logs = new HashSet(0);
     private Set rewardpunishments = new HashSet(0);
     private Set notices = new HashSet(0);
     private Set studymaterials = new HashSet(0);


    // Constructors

    /** default constructor */
    public Partyadministrator() {
    }

    
    /** full constructor */
    public Partyadministrator(String sex, String password, String nation, String tel, Set memberstyles, Set logs, Set rewardpunishments, Set notices, Set studymaterials) {
        this.sex = sex;
        this.password = password;
        this.nation = nation;
        this.tel = tel;
        this.memberstyles = memberstyles;
        this.logs = logs;
        this.rewardpunishments = rewardpunishments;
        this.notices = notices;
        this.studymaterials = studymaterials;
    }

   
    // Property accessors

    public Integer getPid() {
        return this.pid;
    }
    
    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getNation() {
        return this.nation;
    }
    
    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getTel() {
        return this.tel;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }

    public Set getMemberstyles() {
        return this.memberstyles;
    }
    
    public void setMemberstyles(Set memberstyles) {
        this.memberstyles = memberstyles;
    }

    public Set getLogs() {
        return this.logs;
    }
    
    public void setLogs(Set logs) {
        this.logs = logs;
    }

    public Set getRewardpunishments() {
        return this.rewardpunishments;
    }
    
    public void setRewardpunishments(Set rewardpunishments) {
        this.rewardpunishments = rewardpunishments;
    }

    public Set getNotices() {
        return this.notices;
    }
    
    public void setNotices(Set notices) {
        this.notices = notices;
    }

    public Set getStudymaterials() {
        return this.studymaterials;
    }
    
    public void setStudymaterials(Set studymaterials) {
        this.studymaterials = studymaterials;
    }
   








}