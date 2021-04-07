package com.yizhen.webDemo.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.UUID;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.yizhen.webDemo.entity.User;
import com.yizhen.webDemo.service.UserService;



@Controller
@RequestMapping("/userModel")
public class UserController {
	private Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public User get(@RequestParam(required=false) String id) {
		User entity = null;
		if (id != null && id.trim().length() > 0){
			entity = userService.selectUser(id);
		}
		if (entity == null){
			entity = new User();
		}
		return entity;
	}
	
	
	/**
	 * 查询指定的一个用户
	 * @param id
	 * @param model
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping("/selectUser")
	public String selectUser(User user, Model model) throws SQLException{
	    model.addAttribute("user", user);	
		return "userModel/insertUser";
	}
	
	/**
	 * 查询所有的用户
	 * @param model
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping("/selectAllUsers")
	public String selectAllUsers(Model model,@ModelAttribute(value="user") User user) throws SQLException{
		logger.info("查询条件" + user);
		List<User> users = userService.selectAllUsers(user);
		model.addAttribute("users", users);
		return "userModel/selectUser";
	}
	
	/**
	 * 新增/修改用户信息
	 */
	@RequestMapping("/insertUser")
	public String insertUser(@ModelAttribute(value="user") User user) throws SQLException{
		if(user.getId() == null || user.getId().trim().length() <= 0) {
	        String id = UUID.randomUUID().toString().replace("-", "");
			user.setId(id);
			userService.saveUser(user);
		}else {
	        userService.updateUser(user);
		}
		return "redirect:/userModel/selectAllUsers";
	}
	
	/**
	 * 删除用户
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping("/deleteUser")
	public String insertUser(@RequestParam(required=false) String id) throws SQLException{
		userService.deleteUser(id);
		return "redirect:/userModel/selectAllUsers";
	}
}
