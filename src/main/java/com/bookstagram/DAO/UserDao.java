package com.bookstagram.DAO;

import java.util.List;

import com.bookstagram.DTO.User;
import com.bookstagram.util.HibernateUtil;

public class UserDao extends HibernateUtil implements DAOInterface<User, Integer> {

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

    /**
     *
     * @param id
     * @return
     */
    @Override
	public User findById(Integer id) {
            
		
                User user = getCurrentSession().find(User.class, id);
		return user;
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
		
	}
        
	public User findByEmail(String email) {
                User user = getCurrentSession().bySimpleNaturalId(User.class).load(email);
		return user;
	}

}
