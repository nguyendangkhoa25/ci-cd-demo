package com.khoanguyen.springsecurity.controller;

import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class HelloWorldControllerTest {
    @InjectMocks
    HelloWorldController appController;

    @Spy
    ModelMap model;

    @MockitoAnnotations.Mock
    BindingResult result;

    @BeforeClass
    public void setUp(){
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testHomePage(){
        Assert.assertEquals(appController.homePage(model), "welcome");
    }
    @Test
    public void testAdminPage(){
        Assert.assertEquals(appController.adminPage(model), "welcome");
    }

}
