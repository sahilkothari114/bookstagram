package com.bookstagram.DAO;

import com.bookstagram.DTO.User;
import com.mongodb.MongoClient;
import org.bson.types.ObjectId;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.Morphia;
import org.mongodb.morphia.dao.BasicDAO;

public class UserDao extends BasicDAO<User, ObjectId> {

    public UserDao(Class<User> entityClass, Datastore ds) {
        super(entityClass, ds);
    }



}
