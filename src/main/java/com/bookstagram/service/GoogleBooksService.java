/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.service;

import com.bookstagram.util.BookstagramConstant;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.books.Books;
import com.google.api.services.books.Books.Volumes.List;

import com.google.api.services.books.BooksRequestInitializer;
import com.google.api.services.books.model.Volume;
import com.google.api.services.books.model.Volumes;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.security.GeneralSecurityException;

/**
 *
 * @author sahil
 */
public class GoogleBooksService {

    

public void findBooks(String query) throws GeneralSecurityException, IOException {
        JsonFactory jsonFactory =JacksonFactory.getDefaultInstance();
        final Books books = new Books.Builder(GoogleNetHttpTransport.newTrustedTransport(), jsonFactory, null)
                .setApplicationName(BookstagramConstant.APPLICATION_NAME)
                .setGoogleClientRequestInitializer(new BooksRequestInitializer(BookstagramConstant.API_KEY))
                .build();
        List volumesList = books.volumes().list(query);
        volumesList.setMaxResults(5L);
        Volumes volumes = volumesList.execute();
        
        if (volumes.getTotalItems() == 0 || volumes.getItems() == null) {
            System.out.println("No matches found.");
            return;
        }
        java.util.List<Volume> volumeList = volumes.getItems();
        Gson gson = new Gson();
        String jsonVolumes = gson.toJson(volumeList);
        System.out.println("jsonVolumes - "+jsonVolumes);
    }
}
