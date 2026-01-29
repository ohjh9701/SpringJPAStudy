package com.study.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@SequenceGenerator(
		name = "CUSTOMER_SEQ_GEN",
		sequenceName = "CUSTOMER_SEQ",
		initialValue = 1,
		allocationSize = 1
		)
@Table(name = "CUSTOMER")
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CUSTOMER_SEQ_GEN")
	@Column(name = "NO")
	long no;
	
	@Column(name = "ID", unique = true, nullable = false)
	String id;
	
	@Column(name = "PASSWORD")
	String password;
	
	@Column(name = "NAME")
	String name;
	
	@Column(name = "PHONE")
	String phone;
	
	@Column(name = "EMAIL")
	String email;

	
}
