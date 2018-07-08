/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.util;

import com.bookstagram.util.BookstagramConstant;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.Mongo;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

/**
 *
 * @author sahil
 */
public class MongoDBUtil {

    
    public static MongoDBUtil instance;
    public MongoClientURI uri  = new MongoClientURI(BookstagramConstant.URI);
    public MongoClient client;
    public DB database;

    private MongoDBUtil() {
        this.client = new MongoClient(uri);
        this.database = this.client.getDB(BookstagramConstant.DBNAME);
    }
    public static MongoDBUtil CreateInstance(){
        if(MongoDBUtil.instance==null){
            MongoDBUtil.instance = new MongoDBUtil();
        }
        return MongoDBUtil.instance;
    }
    public DBCollection getCollection(String name){
        return database.getCollection(name);
    }  
    public DB getDatabase(){
        return this.database;
    }
}
