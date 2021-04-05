package com.yizhen.webDemo.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.yizhen.webDemo.entity.User;
import com.yizhen.webDemo.service.UserService;



@Controller
public class UserController {
	//private Logger logger = LoggerFactory.getLogger(UserController.class);
	@Autowired
	private UserService userService;
	
	/**
	 * 查询指定的一个用户
	 * @param id
	 * @param model
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping("/userModel/selectUser")
	public String selectUser(@RequestParam(required=false) String id, Model model) throws SQLException{
		if(id!= null) {
			User user = userService.selectUser(id);
			model.addAttribute("user", user);	
		}else {
			
		}		
		return "userModel/insertUser";
	}
	
	/**
	 * 查询所有的用户
	 * @param model
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping("/userModel/selectAllUsers")
	public String selectAllUsers(Model model) throws SQLException{
		List<User> users = userService.selectAllUsers();
		model.addAttribute("users", users);
		return "userModel/selectUser";
	}
	
	/**
	 * 新增/修改用户信息
	 */
	@RequestMapping("/userModel/insertUser")
	public void insertUser(@ModelAttribute(value="user") User user) throws SQLException{
		if(user.getId() == null) {
	        String id = UUID.randomUUID().toString().replace("-", "");
			user.setId(id);
			userService.saveUser(user);
		}else {
	        userService.updateUser(user);
		}		
	}
	
	/**
	 * 删除用户
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping("/userModel/deleteUser")
	public String insertUser(@RequestParam(required=false) String id) throws SQLException{
		userService.deleteUser(id);
		return "redirect:/userModel/selectAllUsers";
	}
}
