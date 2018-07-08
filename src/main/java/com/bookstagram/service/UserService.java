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


import com.bookstagram.DAO.UserDao;
import com.bookstagram.DTO.User;

public class UserService {
    private static UserDao userDao;

    public UserService() {
//        userDao = new UserDao();
    }
    
    public User getUserById(Integer Id){
        return null;
//        userDao.openCurrentSessionWithTransaction();
//        User user = userDao.findById(Id);
//        userDao.closeCurrentSessionWithTransaction();
//        return user;
    }
}
