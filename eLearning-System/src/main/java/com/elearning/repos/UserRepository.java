package com.elearning.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.elearning.models.User;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

	List<User> findByRole(String role); 
}
