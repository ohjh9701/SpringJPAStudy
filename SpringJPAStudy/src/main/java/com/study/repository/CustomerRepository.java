package com.study.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.study.domain.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long>{

	List<Customer> findByIdContaining(String keyword);

	List<Customer> findByNameContaining(String keyword);

	List<Customer> findByEmailContaining(String keyword);

}