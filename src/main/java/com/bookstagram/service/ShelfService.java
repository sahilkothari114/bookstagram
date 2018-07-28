/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.service;

import com.bookstagram.DAO.ShelfDao;
import com.bookstagram.DTO.Shelf;
import com.bookstagram.util.DataSourceConfig;
import org.mongodb.morphia.Key;

/**
 *
 * @author sahil
 */
public class ShelfService {

    DataSourceConfig ds;
    ShelfDao sd;

    public ShelfService() {
        ds = new DataSourceConfig();
        sd = new ShelfDao(Shelf.class, ds.datastore());
    }

    public Shelf searchShelf(Shelf shelf) {
        return sd.findOne("name", shelf.getName());
    }

    public Key<Shelf> addShelf(Shelf shelf) {
        if (searchShelf(shelf) == null) {
            Key<Shelf> save = sd.save(shelf);
            return save;
        }
        return null;
    }

}
