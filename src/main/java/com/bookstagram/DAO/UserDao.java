package com.bookstagram.DAO;

import java.util.List;

import com.bookstagram.DTO.User;
import com.bookstagram.util.HibernateUtil;

public class UserDao extends HibernateUtil implements DAOInterface<User, String> {

	public UserDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void persist(User entity) {
		getCurrentSession().save(entity);
	}

	@Override
	public void update(User entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public User findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(User entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}

}
