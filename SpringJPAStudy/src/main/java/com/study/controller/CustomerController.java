package com.study.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.domain.Customer;
import com.study.service.CustomerService;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Slf4j
@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/insertForm")
	public String getMethodName() {
		return "customer/insertForm";
	}
	
	@PostMapping("/register")
	public String postMethodName(Customer customer, Model model) {
		int count;
		try {
			count = customerService.register(customer);
			if(count > 0) {
				model.addAttribute("coment","회원가입에 성공하였습니다.");
				return "customer/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "customer/failed";
	}
	
	
	
}
