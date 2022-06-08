package com.elearning.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elearning.models.Review;
import com.elearning.repos.ReviewRepository;

@Service
public class ReviewService {
	
	@Autowired ReviewRepository repo;
	
	public void saveReview(Review r) {
		repo.save(r);
	}
	
	public List<Review> findByCouresId(int cid){
		return repo.findByCid(cid);
	}
	
	public List<Review> findByUserId(String userid){
		return repo.findByUserid(userid);
	}

}
