package com.yizhen.webDemo.service;

import java.util.List;

import com.yizhen.webDemo.entity.User;

public interface UserService {

	/**
	 * 查询一个用户
	 * @param id
	 * @return
	 */
	public User selectUser(String id);
	
	/**
	 * 查询所有的用户
	 * @return
	 */
	public List<User> selectAllUsers();
	
	/**
	 * 更新用户
	 * @param user
	 */
	public void updateUser(User user);
	
	/**
	 * 新增用户
	 * @param user
	 */
	public void saveUser(User user);
	
	/**
	 * 删除好友
	 * @param id
	 */
	public void deleteUser(String id);
}
