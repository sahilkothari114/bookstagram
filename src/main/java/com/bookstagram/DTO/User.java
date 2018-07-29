package com.bookstagram.DTO;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import lombok.Data;
import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;

@Entity
@Data
public class User {

    @Id
    private ObjectId userId;
    @SerializedName("username")
    private String userName;
    private String email;
    private String password;
    private String about;
    private List<ReadBook> ReadShelf = new ArrayList<ReadBook>();
    private List<Shelf> shelves = new ArrayList<Shelf>();

}
