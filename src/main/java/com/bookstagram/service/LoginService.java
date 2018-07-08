/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.service;

import com.bookstagram.DAO.UserDao;
import com.bookstagram.DTO.User;
import com.bookstagram.util.PasswordHash;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

/**
 *
 * @author sahil
 */
public class LoginService {
    private static UserDao userDao;
    
    public LoginService(){
//        userDao = new UserDao();
    }
    public User login(User user) throws NoSuchAlgorithmException, InvalidKeySpecException{
//        userDao.openCurrentSessionWithTransaction();
//        User userDb = userDao.findByEmail(user.getEmail());
//        userDao.closeCurrentSessionWithTransaction();
//        if(userDb!=null){
//            System.out.println("User Found");
//            if(PasswordHash.validatePassword(user.getPassword(), userDb.getPassword())){
//                System.out.println("validation successful");
//                return userDb;
//            }
//        }
        return null;
        
    }
    
}
