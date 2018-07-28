package com.bookstagram.DTO;

import java.util.Date;
import java.util.List;
import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;

/**
 *
 * @author sahil
 */
@org.mongodb.morphia.annotations.Entity
public class ReadBook {
    @Id
    private ObjectId readBookId;
    private Date startDate;
    private Date endDate;
    private int pagesRead;
    private boolean complete;  
    @Reference
    private Book book;
    
// <editor-fold defaultstate="collapsed" desc="Getter Setter">

    public ObjectId getReadBookId() {
        return readBookId;
    }

    public void setReadBookId(ObjectId readBookId) {
        this.readBookId = readBookId;
    }
 

    public boolean isComplete() {
        return complete;
    }

    public void setComplete(boolean complete) {
        this.complete = complete;
    }
    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public int getPagesRead() {
        return pagesRead;
    }

    public void setPagesRead(int pagesRead) {
        this.pagesRead = pagesRead;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    @Override
    public String toString() {
        return "ReadBook{" + "startDate=" + startDate + ", endDate=" + endDate + ", pagesRead=" + pagesRead + ", book=" + book + '}';
    }

    public ObjectId getBookId() {
        return book.getBookId();
    }

    public String getCover() {
        return book.getCover();
    }

    public List<String> getAuthors() {
        return book.getAuthors();
    }

    public String getDescription() {
        return book.getDescription();
    }

    public String getTitle() {
        return book.getTitle();
    }

    public String getThumbnail() {
        return book.getThumbnail();
    }

    public void setAuthors(List<String> authors) {
        book.setAuthors(authors);
    }

    public void setCover(String Cover) {
        book.setCover(Cover);
    }

    public void setDescription(String description) {
        book.setDescription(description);
    }

    public void setBookId(ObjectId bookId) {
        book.setBookId(bookId);
    }

    public void setTitle(String title) {
        book.setTitle(title);
    }

    public void setThumbnail(String thumbnail) {
        book.setThumbnail(thumbnail);
    }
    public long getIsbn() {
        return book.getIsbn();
    }

    public void setIsbn(long isbn) {
        book.setIsbn(isbn);
    }

// </editor-fold>


}
