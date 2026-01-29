package com.study.service;

import java.util.List;

import com.study.domain.Customer;

public interface CustomerService {
	public int register(Customer customer) throws Exception;
	public Customer read(Customer customer) throws Exception;
	public int modify(Customer customer) throws Exception;
	public int remove(Customer customer) throws Exception;
	public List<Customer> list() throws Exception;
	public List<Customer> search(String searchType, String keyword) throws Exception;
}
