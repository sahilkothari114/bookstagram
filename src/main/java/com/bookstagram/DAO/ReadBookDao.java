/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.DAO;

import com.bookstagram.DTO.ReadBook;
import org.bson.types.ObjectId;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;

/**
 *
 * @author sahil
 */
public class ReadBookDao extends BasicDAO<ReadBook,ObjectId> {
    
    public ReadBookDao(Class<ReadBook> entityClass, Datastore ds) {
        super(entityClass, ds);
    }
    
}
