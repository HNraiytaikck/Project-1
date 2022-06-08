package com.elearning.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.elearning.models.Notification;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Integer> {
	
	@Query(value = "SELECT * FROM notification WHERE vendorid in(SELECT vendorid from orders where itemtype='Course' and userid=?1)",nativeQuery = true)
	List<Notification> findLearnerNotification(String userid);
	

}
