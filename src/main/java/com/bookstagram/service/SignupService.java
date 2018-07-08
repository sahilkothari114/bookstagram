package com.bookstagram.service;

import com.bookstagram.DAO.UserDao;
import com.bookstagram.DTO.User;
import com.bookstagram.util.BookstagramConstant;
import com.bookstagram.util.BookstagramConstant;
import com.bookstagram.util.MongoDBUtil;
import com.mongodb.MongoClient;
import org.mongodb.morphia.Key;
import org.mongodb.morphia.Morphia;

public class SignupService {

    private static UserDao userDao;

    private MongoClient mongoClient = MongoDBUtil.CreateInstance().client;
    public Morphia morphia = new Morphia();

    public SignupService() {
        morphia.map(User.class);
        userDao = new UserDao(User.class, mongoClient, morphia, BookstagramConstant.DBNAME);
    }

    public void SignUp(User user) {

        Key<User> save = userDao.save(user);

    }
}
