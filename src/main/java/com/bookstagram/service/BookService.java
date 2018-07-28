package com.bookstagram.service;

import com.bookstagram.DAO.BookDao;
import com.bookstagram.DTO.Book;
import com.bookstagram.util.DataSourceConfig;

/**
 *
 * @author sahil
 */
public class BookService {

    BookDao bDAO;
    DataSourceConfig ds = new DataSourceConfig();

    public BookService() {
        bDAO = new BookDao(Book.class, ds.datastore());
    }

    public Book searchBookInDB(Book book) {
        Book findOne = bDAO.findOne("title",book.getTitle());
        if(findOne==null && book.getIsbn()!=0)
            findOne = bDAO.findOne("ISBN",book.getIsbn());
        return findOne;
    }
    public void addBookToDB(Book book) {
        bDAO.save(book);
    }
    public Book searchBookAndAddToDB(Book book){
        Book bookDb = searchBookInDB(book);
        if(bookDb==null)
            addBookToDB(book);
        return searchBookInDB(book);
    }
}
