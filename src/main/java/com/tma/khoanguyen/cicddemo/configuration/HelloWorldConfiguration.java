package com.tma.khoanguyen.cicddemo.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.tma.khoanguyen.cicidemo")
public class HelloWorldConfiguration {
}
