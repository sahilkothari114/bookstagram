/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.service;

/**
 *
 * @author sahil
 */
import com.bookstagram.DAO.ShelfDao;
import com.bookstagram.DAO.UserDao;
import com.bookstagram.DTO.Shelf;
import com.bookstagram.DTO.User;
import com.bookstagram.util.DataSourceConfig;
import java.util.List;
import org.bson.types.ObjectId;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.query.Query;
import org.mongodb.morphia.query.UpdateOperations;
import org.mongodb.morphia.query.UpdateResults;

public class UserService {

    DataSourceConfig ds;
    UserDao ud;

    public UserService() {
        ds = new DataSourceConfig();
        ud = new UserDao(User.class, ds.datastore());
        
    }

    public User getUserById(ObjectId Id) {
        User user = ud.findOne("userId", Id);
        System.out.println("fetched user  - " + user.getUserName());
        return user;
    }

    public boolean addShelfInUser(ObjectId userId, Shelf shelf) {
        Query query = ud.createQuery().field("userId").equal(userId);
        UpdateOperations<User> createUpdateOperations = ud.createUpdateOperations().add("shelves", shelf);
        UpdateResults updateFirst = ud.updateFirst(query, createUpdateOperations);
        
        return updateFirst.getUpdatedExisting();
    }

}