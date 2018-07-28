/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookstagram.service;

import com.bookstagram.DTO.Book;
import com.bookstagram.util.BookstagramConstant;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.books.Books;
import com.google.api.services.books.Books.Volumes.List;

import com.google.api.services.books.BooksRequestInitializer;
import com.google.api.services.books.model.Volume;
import com.google.api.services.books.model.Volumes;
import java.io.IOException;
import java.security.GeneralSecurityException;

/**
 *
 * @author sahil
 */
public class GoogleBooksService {

    public Book findBooks(String query) throws GeneralSecurityException, IOException {
        JsonFactory jsonFactory = JacksonFactory.getDefaultInstance();
        final Books books = new Books.Builder(GoogleNetHttpTransport.newTrustedTransport(), jsonFactory, null)
                .setApplicationName(BookstagramConstant.APPLICATION_NAME)
                .setGoogleClientRequestInitializer(new BooksRequestInitializer(BookstagramConstant.API_KEY))
                .build();
        List volumesList = books.volumes().list(query);
        volumesList.setMaxResults(1L);
        Volumes volumes = volumesList.execute();

        if (volumes.getTotalItems() == 0 || volumes.getItems() == null) {
            System.out.println("No matches found.");
            return null;
        }
        java.util.List<Volume> volumeList = volumes.getItems();
        System.out.println("jsonVolumes - " + volumeList.get(0).toPrettyString());
        Book bookResult = new Book();
        bookResult.setTitle(volumeList.get(0).getVolumeInfo().getTitle());
        bookResult.setAuthors(volumeList.get(0).getVolumeInfo().getAuthors());
        bookResult.setCover(volumeList.get(0).getVolumeInfo().getImageLinks().getThumbnail());
        bookResult.setThumbnail(volumeList.get(0).getVolumeInfo().getImageLinks().getSmallThumbnail());
        bookResult.setDescription(volumeList.get(0).getVolumeInfo().getDescription());
        return bookResult;
    }
}
   // <editor-fold defaultstate="collapsed" desc="Following is the format of JSON which is returned by the books API">
//
//jsonVolumes - {
//  "accessInfo" : {
//    "accessViewStatus" : "FULL_PUBLIC_DOMAIN",
//    "country" : "IN",
//    "embeddable" : true,
//    "epub" : {
//      "downloadLink" : "http://books.google.co.in/books/download/Romeo_and_Juliet.epub?id=moYNAAAAYAAJ&hl=&output=epub&source=gbs_api",
//      "isAvailable" : true
//    },
//    "pdf" : {
//      "downloadLink" : "http://books.google.co.in/books/download/Romeo_and_Juliet.pdf?id=moYNAAAAYAAJ&hl=&output=pdf&sig=ACfU3U2jakPpsLy3WOYxWFJAS-VBeGOCJg&source=gbs_api",
//      "isAvailable" : true
//    },
//    "publicDomain" : true,
//    "quoteSharingAllowed" : false,
//    "textToSpeechPermission" : "ALLOWED",
//    "viewability" : "ALL_PAGES",
//    "webReaderLink" : "http://play.google.com/books/reader?id=moYNAAAAYAAJ&hl=&printsec=frontcover&source=gbs_api"
//  },
//  "etag" : "iVqLuZy97Lk",
//  "id" : "moYNAAAAYAAJ",
//  "kind" : "books#volume",
//  "saleInfo" : {
//    "buyLink" : "https://play.google.com/store/books/details?id=moYNAAAAYAAJ&rdid=book-moYNAAAAYAAJ&rdot=1&source=gbs_api",
//    "country" : "IN",
//    "isEbook" : true,
//    "saleability" : "FREE"
//  },
//  "searchInfo" : {
//    "textSnippet" : "The story of the feuding Montague and Capulet families features the famous balcony scene where the lovers first realize their mutual affection, setting off a series of duels, secret plots, and misunderstandings that eventually leads to one ..."
//  },
//  "selfLink" : "https://www.googleapis.com/books/v1/volumes/moYNAAAAYAAJ",
//  "volumeInfo" : {
//    "allowAnonLogging" : false,
//    "authors" : [ "William Shakespeare" ],
//    "averageRating" : 4.0,
//    "canonicalVolumeLink" : "https://market.android.com/details?id=book-moYNAAAAYAAJ",
//    "contentVersion" : "0.4.6.0.full.3",
//    "description" : "Performed all over the world, and constantly adapted and reinterpreted in a variety of mediums, Shakespeare’s 1597 tale about the doomed “star-crossed lovers” from enemy families whose tumultuous affair ends in tragedy is one of his best known and most beloved plays. The story of the feuding Montague and Capulet families features the famous balcony scene where the lovers first realize their mutual affection, setting off a series of duels, secret plots, and misunderstandings that eventually leads to one of the most tragic death scenes in all of theater.",
//    "imageLinks" : {
//      "smallThumbnail" : "http://books.google.com/books/content?id=moYNAAAAYAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
//      "thumbnail" : "http://books.google.com/books/content?id=moYNAAAAYAAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
//    },
//    "industryIdentifiers" : [ {
//      "identifier" : "HARVARD:HNL9UV",
//      "type" : "OTHER"
//    } ],
//    "infoLink" : "https://play.google.com/store/books/details?id=moYNAAAAYAAJ&source=gbs_api",
//    "language" : "en",
//    "maturityRating" : "NOT_MATURE",
//    "pageCount" : 216,
//    "panelizationSummary" : {
//      "containsEpubBubbles" : false,
//      "containsImageBubbles" : false
//    },
//    "previewLink" : "http://books.google.co.in/books?id=moYNAAAAYAAJ&printsec=frontcover&dq=romeo+and+juliet&hl=&cd=1&source=gbs_api",
//    "printType" : "BOOK",
//    "publishedDate" : "1839",
//    "ratingsCount" : 293,
//    "readingModes" : {
//      "text" : true,
//      "image" : true
//    },
//    "title" : "Romeo and Juliet"
//  }
//}
// </editor-fold>