package com.bookstagram.DTO;

import java.util.ArrayList;
import java.util.List;
import lombok.Data;
import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;

/**
 *
 * @author sahil
 */
@org.mongodb.morphia.annotations.Entity
@Data
public class Shelf {

    @Id
    private ObjectId shelfId;
    private String name;
    @Reference
    private List<Book> books = new ArrayList<>();
    private boolean personal;
}
