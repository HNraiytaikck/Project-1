package com.elearning.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elearning.models.User;
import com.elearning.repos.UserRepository;

@Service
public class UserService {

	@Autowired UserRepository urepo;
	
	public void addUser(User u) {
		urepo.save(u);
	}
	
	public void updateUser(User u) {
		System.out.println(u.getUserid());
		User user=findUser(u.getUserid());		
		user.setActive(u.getActive());
		user.setName(u.getName());
		user.setPhone(u.getPhone());
		user.setAddress(u.getAddress());
		user.setRole(u.getRole());
		user.setDob(u.getDob());
		System.out.println(user);
		urepo.save(user);
	}
	
	
	public void deactivate(String userid) {
		User user=urepo.getById(userid);
		user.setActive(false);
		urepo.save(user);
	}
	
	public void activate(String userid) {
		User user=urepo.getById(userid);
		user.setActive(true);
		urepo.save(user);
	}
	
	public List<User> allUsers(){
		return urepo.findAll();
	}
	
	public List<User> allUsers(String role){
		return urepo.findByRole(role);
	}
	
	public User findUser(String userid) {
		return urepo.findById(userid).get();
	}
	
	public long countUsers() {
		return urepo.count();
	}
	
	public User validateUser(String userid,String pwd) {
		Optional<User> u=urepo.findById(userid);
		if(u.isPresent()) {
			User user=u.get();
			if(user.getPwd().equals(pwd)) {
				return user;
			}
			else {
				return null;
			}
		}
		else {
			return null;
		}
	}
}
