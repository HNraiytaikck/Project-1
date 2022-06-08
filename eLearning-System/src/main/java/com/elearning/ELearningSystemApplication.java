package com.elearning;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

import com.elearning.models.User;
import com.elearning.services.UserService;

@SpringBootApplication
@EnableJpaAuditing
public class ELearningSystemApplication {
	
	private static final Logger log = LoggerFactory.getLogger(ELearningSystemApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(ELearningSystemApplication.class, args);
	}

	@Bean
	public CommandLineRunner demo(UserService srv) {
	    return (args) -> {
	    	if(srv.countUsers()==0) {
	    		User user=new User();
	    		user.setUserid("admin@gmail.com");
	    		user.setPwd("Admin123");
	    		user.setRole("Admin");
	    		user.setAddress("Abcxyz Defgh");
	    		user.setActive(true);
	    		user.setPhone("9564734872");
	    		user.setDob("1995-12-14");
	    		user.setCpwd("Admin123");
	    		user.setName("Administrator");
	    		srv.addUser(user);
	    		log.info("Admin user created successfully");
	    	}else {
	    		log.info("Admin user already created");
	    	}
	    };
	}
}
