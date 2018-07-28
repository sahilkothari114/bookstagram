/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.DAO;

import com.bookstagram.DTO.Shelf;
import org.bson.types.ObjectId;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;

/**
 *
 * @author sahil
 */
public class ShelfDao extends BasicDAO<Shelf, ObjectId>{
    
    public ShelfDao(Class<Shelf> entityClass, Datastore ds) {
        super(entityClass, ds);
    }
    
}
