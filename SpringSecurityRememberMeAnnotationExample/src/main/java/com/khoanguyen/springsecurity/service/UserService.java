package com.khoanguyen.springsecurity.service;

import com.khoanguyen.springsecurity.model.User;

public interface UserService {

	User findById(int id);
	
	User findBySso(String sso);
	
}