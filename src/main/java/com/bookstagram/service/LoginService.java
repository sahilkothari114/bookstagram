/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.service;

import com.bookstagram.DAO.UserDao;
import com.bookstagram.DTO.User;
import com.bookstagram.util.DataSourceConfig;
import com.bookstagram.util.PasswordHash;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import org.mongodb.morphia.query.Query;

/**
 *
 * @author sahil
 */
public class LoginService {

    DataSourceConfig ds = new DataSourceConfig();

    public LoginService() {

    }

    public User login(User user) throws NoSuchAlgorithmException, InvalidKeySpecException {
        
        //Query<User> query = ds.datastore().find(User.class, "email", user.getEmail());
        UserDao ud = new UserDao(User.class,ds.datastore());
        User userDb = ud.findOne( "email", user.getEmail());
        //User userDb = query.get();
        System.out.println("login service-------"+userDb.getUserName());
        if (userDb != null) {
            System.out.println("User Found");
            if (PasswordHash.validatePassword(user.getPassword(), userDb.getPassword())) {
                System.out.println("validation successful");
                return userDb;
            }
        }
        return null;

    }

}
