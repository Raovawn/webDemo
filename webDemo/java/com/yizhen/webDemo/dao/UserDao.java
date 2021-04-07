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
	 * @param user
	 * @return
	 */
	public List<User> selectAllUsers(User user);
	
	/**
	 * 新增用户
	 * @param user
	 */
	public void saveUser(User user);
	
	/**
	 * 更新用户
	 * @param user
	 */
	public void updateUser(User user);
	
	/**
	 * 删除好友
	 * @param id
	 */
	public void deleteUser(String id);
}
