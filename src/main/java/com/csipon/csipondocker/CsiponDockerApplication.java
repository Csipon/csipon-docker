package com.csipon.csipondocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class CsiponDockerApplication {

	public static void main(String[] args) {
		SpringApplication.run(CsiponDockerApplication.class, args);
	}

	@GetMapping("/hello")
	public String sayHello(){
		return "Hello motherfucker";
	}

}
