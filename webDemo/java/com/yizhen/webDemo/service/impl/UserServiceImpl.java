package com.yizhen.webDemo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yizhen.webDemo.dao.UserDao;
import com.yizhen.webDemo.entity.User;
import com.yizhen.webDemo.service.UserService;

@Service(value="userService")
public class UserServiceImpl implements UserService {
    @Autowired
	private UserDao userDao;
    
	public User selectUser(String id) {
		return userDao.selectUser(id);
	}

	public List<User> selectAllUsers() {
		return userDao.selectAllUsers();
	}
	
	
}
