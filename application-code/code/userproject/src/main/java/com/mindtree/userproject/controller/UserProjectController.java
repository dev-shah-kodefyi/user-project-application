package com.mindtree.userproject.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mindtree.userproject.entity.Project;
import com.mindtree.userproject.entity.User;
import com.mindtree.userproject.exceptions.serviceexception.AdminUserServiceException;
import com.mindtree.userproject.exceptions.serviceexception.UserIdNotFoundException;
import com.mindtree.userproject.service.UserProject;

@Controller
public class UserProjectController {
	@Autowired
	UserProject service;

	@RequestMapping("/")
	public String getFrontPage() {
		return "Index";
	}

	@PostMapping("/AdminPage")
	public String showAdminPage(@RequestParam int senduserid, String pwd) throws UserIdNotFoundException {
		String response = "";
		String check = "";
		try {
			check = service.checkUserOrAdmin(senduserid, pwd);
		} catch (AdminUserServiceException e) {
			throw new UserIdNotFoundException(e.getMessage());
		}
		if (check.equalsIgnoreCase("Admin"))
			response = response + "AdminPage";
		else
			response = response + "UserPage";
		return response;
	}

	@RequestMapping("/adduser")
	public String addUser(Map<String, Object> map) {
		List<Project> projects = service.getAllProjects();
		map.put("projects", projects);
		return "adduser";
	}

	@RequestMapping("/addproject")
	public String addproject() {
		return "addproject";
	}

	@PostMapping("/projectadded")
	public String addTheProject(Project project) {
		service.addProjectToDb(project);
		return "AdminPage";
	}

	@PostMapping("useradded")
	public String addTheUser(@RequestParam int projectId, User user) {
		service.addUserToDb(user, projectId);
		return "AdminPage";
	}

	@RequestMapping("/viewallprojects")
	public String showAllTheProjects(Map<String, Object> map) {
		List<Project> projects = service.getAllProjects();
		map.put("projects", projects);
		return "showallprojects";
	}

	@RequestMapping("/viewbyuserid")
	public String findUser() {
		return "findbyempid";
	}

	@PostMapping("/showUser")
	public String showUser(@RequestParam int userId, Map<String, Object> map) {
		User user = service.getUserFromDb(userId);
		map.put("user", user);
		return "showUser";
	}

	@RequestMapping("/viewallusers")
	public String showAllTheUsers(Map<String, Object> map) {
		List<User> users = service.getAllUsersFromDb();
		map.put("users", users);
		return "allusers";
	}

	@RequestMapping("/getProject/{projectId}")
	public String showProject(@PathVariable int projectId, Map<String, Object> map) {
		Project project = service.getProject(projectId);
		map.put("project", project);
		return "showProject";

	}
	
	@RequestMapping("/RedirectAdminPage")
	public String redirection() {
		return "Index";
	}
}
