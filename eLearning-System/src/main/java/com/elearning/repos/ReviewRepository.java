package com.elearning.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.elearning.models.Review;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Integer> {
	
	List<Review> findByCid(int cid);
	
	List<Review> findByUserid(String userid);

}
