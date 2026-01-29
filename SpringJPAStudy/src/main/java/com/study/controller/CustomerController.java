package com.study.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.Board;
import com.study.domain.Customer;
import com.study.service.CustomerService;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;




@Slf4j
@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/insertForm")
	public String insertForm() {
		return "customer/insertForm";
	}
	
	@PostMapping("/register")
	public String register(Customer customer, Model model) {
		log.info("customer INFO = " + customer.toString());
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
		model.addAttribute("coment","회원가입에 실패하였습니다.");
		return "customer/failed";
	}
	
	@GetMapping("/customerList")
	public String customerList(Model model) {
		try {
			List<Customer> customerList = customerService.list();
			model.addAttribute("customerList", customerList);
			return "customer/customerList";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "customer/customerList";
	}
	
	@GetMapping("/detail")
	public String detail(@RequestParam("no") long no, Model model) {
	    Customer c = new Customer();
	    c.setNo(no);
		try {
			Customer customer = customerService.read(c);
			model.addAttribute("customer", customer);
			return "customer/detail";
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("coment","회원가입에 실패하였습니다.");
		return "customer/failed";
	}
	
	
	
	@GetMapping("/delete")
	public String remove(Customer customer, Model model) {
		log.info("boardDetail board = "+customer.toString());
		
		try {
			int count = customerService.remove(customer);
			if(count > 0) {
				model.addAttribute("coment", "%d 님의 정보가 삭제되었습니다.".formatted(customer.getNo()));
				return "customer/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("coment", "%d 님의 정보 삭제가 실패하였습니다.".formatted(customer.getNo()));
		return "customer/failed";
	}
	
	@GetMapping("/updateForm")
	public String UpdateForm(Customer c, Model model) {
		log.info("updateForm board = "+c.toString());
		
		try {
			Customer customer = customerService.read(c);
			if(customer == null) {
				model.addAttribute("coment", "%d 님의 정보가 없습니다".formatted(c.getNo()));
				return "customer/failed";
			}
			model.addAttribute("Customer", customer);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "customer/updateForm";
	}
	
	@PostMapping("/update")
	public String update(Model model, Customer customer) {
		log.info("updateBoard board = "+customer.toString());
		
		try {
			int count = customerService.modify(customer);
			if(count > 0) {
				model.addAttribute("message", "%d 님의 정보가 수정되었습니다.".formatted(customer.getNo()));
				return "customer/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message", "%d 님의 정보가 수정되지 않았습니다.".formatted(customer.getNo()));
		return "customer/failed";
	}
	
	@GetMapping("/search")
	public String customerSearch(Model model, String searchType, String keyword) {
		
		try {
			List<Customer> customerList = customerService.search(searchType, keyword);
			
			model.addAttribute("customerList",customerList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "customer/customerList";
	}
	
}
