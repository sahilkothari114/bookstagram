package com.bookstagram.DAO;

import com.bookstagram.DTO.User;
import org.bson.types.ObjectId;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;

/**
 *
 * @author sahil
 */
public class UserDao extends BasicDAO<User, ObjectId> {

    public UserDao(Class<User> entityClass, Datastore ds) {
        super(entityClass, ds);
    }





}
