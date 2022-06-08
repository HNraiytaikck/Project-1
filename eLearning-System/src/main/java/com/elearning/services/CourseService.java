package com.elearning.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elearning.models.Course;
import com.elearning.models.Notification;
import com.elearning.repos.CourseRepository;

@Service
public class CourseService {

	@Autowired CourseRepository repo;
	@Autowired NotificationService nsrv;
	
	public void saveCourse(Course c) {
		if(c.getId()==0) {
			Course crs=repo.save(c);
			Notification noti=new Notification();
			noti.setCid(crs.getId());
			noti.setCname(crs.getCname());
			noti.setVendorid(c.getUserid());
			System.out.println(c.getId());
			nsrv.saveNotification(noti);
		}
		else {
			repo.save(c);
		}
	}
	
	public List<Course> allcourses(){
		return repo.findByActive(true);
	}
	
	public List<Course> usercourses(String userid){
		return repo.findByUserid(userid);
	}
	
	public List<Course> categorylist(String cat){
		return repo.findByCategory(cat);
	}
	
	public List<Course> usercoursesanduser(String userid,String cat){
		return repo.findByUseridAndCategory(userid,cat);
	}
	
	public Course findCourse(int id) {
		return repo.getById(id);
	}
	
	public void deactivate(int id) {
		Course c=findCourse(id);
		c.setActive(false);
		saveCourse(c);
	}
	
	public void activate(int id) {
		Course c=findCourse(id);
		c.setActive(true);
		saveCourse(c);
	}
}
