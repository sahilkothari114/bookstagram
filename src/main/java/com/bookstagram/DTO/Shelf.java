package com.bookstagram.DTO;

import java.util.ArrayList;
import java.util.List;
import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Id;

/**
 *
 * @author sahil
 */
@org.mongodb.morphia.annotations.Entity
public class Shelf {
        @Id
    private ObjectId shelfId;
    private String name;
    private List<Book> books = new ArrayList<>();
    private boolean personal;
// <editor-fold defaultstate="collapsed" desc="Getter Setter">

    public ObjectId getShelfId() {
        return shelfId;
    }

    public void setShelfId(ObjectId shelfId) {
        this.shelfId = shelfId;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    public boolean isPersonal() {
        return personal;
    }

    public void setPersonal(boolean personal) {
        this.personal = personal;
    }
        public boolean addBook(Book e) {
        return books.add(e);
    }

    public Book getBook(int index) {
        return books.get(index);
    }

    public int indexOfBook(Object o) {
        return books.indexOf(o);
    }    // </editor-fold>
}

