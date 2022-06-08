package com.elearning.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elearning.models.Course;
import com.elearning.repos.ServiceRepository;

@Service
public class ServiceService {
	@Autowired ServiceRepository repo;
	
	public void saveService(com.elearning.models.Service srv) {
		repo.save(srv);
	}
	
	public List<com.elearning.models.Service> allservices(){
		return repo.findByActive(true);
	}
	
	public List<com.elearning.models.Service> userservices(String userid){
		return repo.findByUserid(userid);
	}
	
	public com.elearning.models.Service findService(int id) {
		return repo.getById(id);
	}
	
	public void deactivate(int id) {
		com.elearning.models.Service c=findService(id);
		c.setActive(false);
		saveService(c);
	}
	
	public void activate(int id) {
		com.elearning.models.Service c=findService(id);
		c.setActive(true);
		saveService(c);
	}
}
