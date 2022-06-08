package com.elearning.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.elearning.models.Service;

@Repository
public interface ServiceRepository extends JpaRepository<Service, Integer> {

	List<Service> findByUserid(String userid);

	List<Service> findByActive(boolean active);
	
	
}
