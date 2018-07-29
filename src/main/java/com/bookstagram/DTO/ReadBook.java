package com.bookstagram.DTO;

import java.util.Date;
import lombok.Data;
import lombok.Delegate;
import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;

/**
 *
 * @author sahil
 */
@org.mongodb.morphia.annotations.Entity
@Data

public class ReadBook {

    @Id
    private ObjectId readBookId;
    private Date startDate;
    private Date endDate;
    private int pagesRead;
    private boolean complete;
    @Reference
    @Delegate
    private Book book;
}
