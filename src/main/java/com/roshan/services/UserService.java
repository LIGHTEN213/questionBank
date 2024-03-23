package com.roshan.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.roshan.model.User;
import com.roshan.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public User saveUserData(User u) {
		u.setUsertype("user");
		// TODO Auto-generated method stub
		return userRepository.save(u);
	}

	public User getByEmailAndPassword(String email, String password) 
	{
		
		// TODO Auto-generated method stub
		return userRepository.findByEmailAndPassword(email, password);
	}

	
	/*
	 * public boolean existsByEmail(String email) {
	 * 
	 * return userRepository.existsByEmail(email);
	 * 
	 * }
	 */

}
