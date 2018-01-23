package com.techprimers.security.springsecurityauthserver.repository;

import org.springframework.data.repository.CrudRepository;

import com.techprimers.security.springsecurityauthserver.model.Client;


public interface ClientRepository extends CrudRepository<Client, String> {
	//
}