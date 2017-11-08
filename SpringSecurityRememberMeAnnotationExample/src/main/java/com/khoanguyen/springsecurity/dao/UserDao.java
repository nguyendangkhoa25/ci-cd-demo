package com.khoanguyen.springsecurity.dao;

import com.khoanguyen.springsecurity.model.User;

public interface UserDao {

	User findById(int id);
	
	User findBySSO(String sso);
	
}

