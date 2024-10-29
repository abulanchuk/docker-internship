package com.example.dockerinternship.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @Value("${DEVOPS:Unknown}")
    private String devops;

    @GetMapping("/getName")
    public String hello() {
        return "return username: " + devops;
    }

    @GetMapping("/hello")
    public String status() {
        return "Hello World!";
    }
}
