package com.mindtree.userproject.service.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.userproject.entity.Project;
import com.mindtree.userproject.entity.User;
import com.mindtree.userproject.exceptions.serviceexception.AdminUserServiceException;
import com.mindtree.userproject.exceptions.serviceexception.UserIdNotFoundException;
import com.mindtree.userproject.repository.ProjectRepository;
import com.mindtree.userproject.repository.UserRepository;
import com.mindtree.userproject.service.UserProject;

@Service
public class UserProjectImpl implements UserProject {
	@Autowired
	UserRepository userrepo;
	
	@Autowired
	ProjectRepository prorepo;

	@Override
	public String checkUserOrAdmin(int senduserid, String pwd) throws AdminUserServiceException {
		User user=userrepo.getOne(senduserid);
		String response="";
		
		if(this.userrepo.existsById(senduserid)) {
			if(user.getPassword().equals(pwd)) {
				if(user.getRole().equalsIgnoreCase("user"))
					response=response+"user";
				else if(user.getRole().equalsIgnoreCase("admin"))
					response=response+"Admin";
				else
					response=response+"error";
			}
			else
				throw new UserIdNotFoundException("Invalid Id");
				//System.out.println("not exists");
		}
		else
			throw new UserIdNotFoundException("Invalid Password");
			//System.out.println("not exists");
		return response;
	}

	@Override
	public List<Project> getAllProjects() {
        return prorepo.findAll();
	}

	@Override
	public void addProjectToDb(Project project) {
		// TODO Auto-generated method stub
		int count=0;
		List<Project> projectsInDb = prorepo.findAll();
		for (Project project1 : projectsInDb) {
			if(!(project1.getProjectName().equals(project.getProjectName()))) {
				count++;
			}
		}
			if(count<projectsInDb.size())
				System.out.println("already exists");
			else
				prorepo.save(project);
	}

	@Override
	public void addUserToDb(User user, int projectId) {
		// TODO Auto-generated method stub
		Project project=prorepo.getOne(projectId);
		user.setProject(project);
		user.setRole("user");
		userrepo.save(user);
	}

	@Override
	public User getUserFromDb(int userId) {
		// TODO Auto-generated method stub
		return userrepo.getOne(userId);
	}

	@Override
	public List<User> getAllUsersFromDb() {
		// TODO Auto-generated method stub
		return userrepo.findAll();
	}

	@Override
	public Project getProject(int projectId) {
		// TODO Auto-generated method stub
		return prorepo.getOne(projectId);
	}
	

}
