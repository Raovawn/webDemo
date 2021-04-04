package com.yizhen.webDemo.controller;

import java.sql.SQLException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yizhen.webDemo.entity.User;
import com.yizhen.webDemo.service.UserService;



@Controller
public class UserController {
	private Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	private UserService userService;
	
	/**
	 * 查询指定的一个用户
	 * @throws SQLException
	 */
	@RequestMapping("/selectUser")
	public String selectUser(@RequestParam(required=false) String id, Model model) throws SQLException{
		User user = userService.selectUser(id);
		model.addAttribute("user", user);
		return "userModel/selectUser";
	}
	
	@RequestMapping("/selectAllUsers")
	public String selectAllUsers(Model model) throws SQLException{
		List<User> users = userService.selectAllUsers();
		model.addAttribute("user", users);
		return "userModel/selectUser";
	}
}
