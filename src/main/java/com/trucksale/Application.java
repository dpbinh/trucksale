package com.trucksale;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication

public class Application {
	private static final Logger log = LoggerFactory.getLogger(Application.class);

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
	
//	@Bean
//	public CommandLineRunner demo(UserRepository userrepo){
//		return (args) -> {
//			userrepo.save(new User("tuabin@gmail.com", "tuabin"));
//			log.info("save succesful");
//		};
//	}
}