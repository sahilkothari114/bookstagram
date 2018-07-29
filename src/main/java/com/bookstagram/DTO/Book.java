package com.bookstagram.DTO;

import java.util.ArrayList;
import java.util.List;
import lombok.Data;
import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Entity;

/**
 *
 * @author sahil
 */
@Entity
@Data
public class Book {

    @Id
    private ObjectId bookId;
    private long isbn;
    private String title;
    private String thumbnail;
    private String cover;
    private int pageCount;
    private List<String> authors = new ArrayList<>();
    private String description;

}
