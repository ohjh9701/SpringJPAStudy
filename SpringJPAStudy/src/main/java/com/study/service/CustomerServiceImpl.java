package com.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.study.domain.Customer;
import com.study.repository.CustomerRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	@Transactional
	public int register(Customer c) throws Exception {
		Customer customer = customerRepository.save(c);
		return (customer != null) ? 1 : 0;
	}

	@Override
	public Customer read(Customer c) throws Exception {
		return customerRepository.findById(c.getNo()).orElse(null);
	}

	@Override
	@Transactional
	public int modify(Customer c) throws Exception {
		Customer customer = customerRepository.getReferenceById(c.getNo());
		customer.setName(c.getName());
		customer.setPassword(c.getPassword());
		customer.setPhone(c.getPhone());
		customer.setEmail(c.getEmail());
		return customer != null ? 1 : 0;
	}

	@Override
	@Transactional
	public int remove(Customer customer) throws Exception {
		int count = 1;
		try {
			customerRepository.deleteById(customer.getNo());
		} catch (Exception e) {
			log.info(e.toString());
			count = 0;
		}
		return count;
	}

	@Override
	public List<Customer> list() throws Exception {
		List<Customer> customerList = customerRepository.findAll(Sort.by(Direction.DESC, "no"));
		return customerList;
	}
	
	@Override
	@Transactional(readOnly = true)
	public List<Customer> search(String searchType, String keyword) throws Exception {
		//searchType = {ID, NAME, EMAIL}
		if(searchType.equals("id")) {
			return customerRepository.findByIdContaining(keyword);
		} else if(searchType.equals("name")) {
			return customerRepository.findByNameContaining(keyword);
		} else if(searchType.equals("email")) {
			return customerRepository.findByEmailContaining(keyword);
		} else {
			return customerRepository.findByIdContaining(keyword);
		}
	}

}
