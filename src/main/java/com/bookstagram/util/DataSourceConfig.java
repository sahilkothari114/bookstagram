/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.util;

import com.bookstagram.DTO.Entity;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.Morphia;
import com.mongodb.MongoClient;
import com.bookstagram.util.BookstagramConstant;

public class DataSourceConfig {
	

	private Morphia morphia() {
		final Morphia morphia = new Morphia();
		morphia.mapPackageFromClass(Entity.class);
		return morphia;
	}
        
	public Datastore datastore(MongoClient mongoClient) {
		final Datastore datastore = morphia().createDatastore(mongoClient,BookstagramConstant.DBNAME);
		datastore.ensureIndexes();
		return datastore;
	}
}