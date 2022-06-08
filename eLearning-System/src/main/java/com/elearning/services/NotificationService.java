package com.elearning.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elearning.models.Notification;
import com.elearning.repos.NotificationRepository;

@Service
public class NotificationService {

	@Autowired NotificationRepository repo;
	
	public void saveNotification(Notification noti) {
		repo.save(noti);
	}
	
	public List<Notification> listLearnerNoti(String userid) {
		return repo.findLearnerNotification(userid);
	}
}
