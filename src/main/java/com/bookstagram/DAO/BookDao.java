/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.DAO;

import com.bookstagram.DTO.Book;
import org.bson.types.ObjectId;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;

/**
 *
 * @author sahil
 */
public class BookDao extends BasicDAO<Book, ObjectId>{
    
    public BookDao(Class entityClass, Datastore ds) {
        super(entityClass, ds);
    }
    
}
