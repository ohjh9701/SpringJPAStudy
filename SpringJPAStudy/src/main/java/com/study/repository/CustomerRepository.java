package com.study.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.study.domain.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long>{

}
