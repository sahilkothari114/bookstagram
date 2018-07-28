package com.bookstagram.DTO;

import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import org.bson.types.ObjectId;
import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;
import org.mongodb.morphia.annotations.Reference;

@Entity
public class User {

    @Id
    private ObjectId userId;

    @SerializedName("username")
    private String userName;
    private String email;
    private String password;
    private String about;
    //the following list will contain the list of the books read by the user

    private List<ReadBook> ReadShelf = new ArrayList<ReadBook>();
    

    private List<Shelf> shelves = new ArrayList<Shelf>(); 


// <editor-fold defaultstate="collapsed" desc="Getter Setter">
    
    public List<Shelf> getShelves() {
        return shelves;
    }

    public void setShelves(List<Shelf> shelves) {
        this.shelves = shelves;
    }
    public List<ReadBook> getReadShelf() {
        return ReadShelf;
    }

    public void setReadShelf(List<ReadBook> ReadShelf) {
        this.ReadShelf = ReadShelf;
    }

    public ObjectId getUserId() {
        return userId;
    }

    public void setUserId(ObjectId userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userName=" + userName + ", email=" + email + ", about=" + about + ", ReadShelf=" + ReadShelf + '}';
    }
// </editor-fold>
}
