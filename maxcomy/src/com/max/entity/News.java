package com.max.entity;

import java.util.Date;


/**
 * News entity. @author MyEclipse Persistence Tools
 */

public class News  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String catalog;
     private String title;
     private String content;
     private String typeurl;
     private Date cdate;


    // Constructors

    /** default constructor */
    public News() {
    }

	/** minimal constructor */
    public News(String catalog, String title) {
        this.catalog = catalog;
        this.title = title;
    }
    
    /** full constructor */
    public News(String catalog, String title, String content, String typeurl, Date cdate) {
        this.catalog = catalog;
        this.title = title;
        this.content = content;
        this.typeurl = typeurl;
        this.cdate = cdate;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId( Integer id) {
        this.id = id;
    }

    public String getCatalog() {
        return this.catalog;
    }
    
    public void setCatalog(String catalog) {
        this.catalog = catalog;
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

    public String getTypeurl() {
        return this.typeurl;
    }
    
    public void setTypeurl(String typeurl) {
        this.typeurl = typeurl;
    }

    public Date getCdate() {
        return this.cdate;
    }
    
    public void setCdate(Date cdate) {
        this.cdate = cdate;
    }
   








}