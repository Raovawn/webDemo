package com.yizhen.webDemo.dao;

import java.util.List;

import com.yizhen.webDemo.entity.User;

/**
 * 用户类
 * @author liuyizhen
 *
 */
public interface UserDao {
	
	/**
	 * 查询特定的用户
	 * @param id
	 * @return
	 */
	public User selectUser(String id);
	
	/**
	 * 查询所用的用户
	 * @return
	 */
	public List<User> selectAllUsers();
}
