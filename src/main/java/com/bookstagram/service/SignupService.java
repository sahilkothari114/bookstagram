package com.bookstagram.service;

import com.bookstagram.DAO.ReadBookDao;
import com.bookstagram.DAO.UserDao;
import com.bookstagram.DTO.ReadBook;
import com.bookstagram.DTO.User;
import com.bookstagram.util.DataSourceConfig;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

public class SignupService {

    DataSourceConfig ds = new DataSourceConfig();


    public void SignUp(User user) {
        //test code start
        ReadBook rd = new ReadBook();
        
        rd.setIsbn(21045664);
        List<String> authors = new ArrayList<>();
        authors.add("dan brown");
        authors.add("amish");
        rd.setAuthors(authors);
        rd.setTitle("origin");
        Calendar myCalendar = new GregorianCalendar(2014, 2, 11);
        Date endDate = myCalendar.getTime();
        
        rd.setEndDate(endDate);
        List<ReadBook> ReadShelf = new ArrayList<>();

        ReadBookDao rdd = new ReadBookDao(ReadBook.class,ds.datastore());
        rdd.save(rd);
        
        
        ReadShelf.add(rd);
        user.setReadShelf(ReadShelf);
        //end
        
        UserDao ud = new UserDao(User.class,ds.datastore());
        ud.save(user);
    }
}
