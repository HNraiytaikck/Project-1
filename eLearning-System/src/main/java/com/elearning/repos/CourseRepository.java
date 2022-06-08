package com.elearning.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.elearning.models.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Integer> {
	List<Course> findByUserid(String userid);
	List<Course> findByCategory(String category);
	List<Course> findByUseridAndCategory(String userid,String category);
	List<Course> findByActive(boolean active);
}
