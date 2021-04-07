package com.yizhen.webDemo.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.yizhen.webDemo.dao.UserDao;
import com.yizhen.webDemo.entity.User;

@Repository(value="userDao")
public class UserDaoImpl implements UserDao {

	 @Autowired
	 public SqlSessionTemplate sqlSessionTempalte;
	 
	 public User selectUser(String id) {
		    User user = (User) sqlSessionTempalte.selectOne("selectUser", id);		
			return user;
	 }

	public List<User> selectAllUsers(User user) {
		 List<User> users =  sqlSessionTempalte.selectList("queryUser",user);		
			return users;
	}

	public void saveUser(User user) {
		sqlSessionTempalte.insert("addOneUser",user);	
	}

	public void deleteUser(String id) {
		sqlSessionTempalte.delete("deleteOneUser",id);	
	}

	public void updateUser(User user) {
		sqlSessionTempalte.insert("updateOneUser",user);	
	}
	
	
	
}
