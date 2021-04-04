package com.yizhen.webDemo.service;

import java.util.List;

import com.yizhen.webDemo.entity.User;

public interface UserService {

	/**
	 * 查询一个用户
	 */
	public User selectUser(String id);
	
	/**
	 * 查询所有的用户
	 */
	public List<User> selectAllUsers();
}
