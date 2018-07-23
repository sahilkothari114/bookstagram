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


import com.bookstagram.DTO.User;
import com.bookstagram.util.DataSourceConfig;
import org.bson.types.ObjectId;
import org.mongodb.morphia.Datastore;
public class UserService {
    Datastore ds ;

    public UserService() {
        ds = new DataSourceConfig().datastore();
    }
    
    public User getUserById(ObjectId Id){
        User user = ds.get(User.class,Id);
        System.out.println("fetched user  - "+user.getUserName());
        return user;
    }
}
