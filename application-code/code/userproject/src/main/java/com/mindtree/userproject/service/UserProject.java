package com.mindtree.userproject.service;

import java.util.List;

import com.mindtree.userproject.entity.Project;
import com.mindtree.userproject.entity.User;
import com.mindtree.userproject.exceptions.serviceexception.AdminUserServiceException;

public interface UserProject {

	String checkUserOrAdmin(int senduserid, String pwd) throws AdminUserServiceException;

	List<Project> getAllProjects();

	void addProjectToDb(Project project);

	void addUserToDb(User user, int projectId);

	User getUserFromDb(int userId);

	List<User> getAllUsersFromDb();

	Project getProject(int projectId);

}
