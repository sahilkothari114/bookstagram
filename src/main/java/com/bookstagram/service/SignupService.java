package com.bookstagram.service;

import com.bookstagram.DAO.UserDao;
import com.bookstagram.DTO.User;

public class SignupService {
	private static UserDao userDao;
		
	public SignupService(){
		userDao = new UserDao();
	}
	public void SignUp(User user) {
		userDao.openCurrentSessionWithTransaction();
		userDao.persist(user);
		userDao.closeCurrentSessionWithTransaction();
	}
}
