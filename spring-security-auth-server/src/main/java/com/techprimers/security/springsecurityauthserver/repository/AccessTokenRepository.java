package com.techprimers.security.springsecurityauthserver.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.techprimers.security.springsecurityauthserver.model.AccessToken;


public interface AccessTokenRepository extends CrudRepository<AccessToken, String> {
	//
	AccessToken findByTokenIdAndClientId(String tokenId, String clientId);
	
	int deleteByUserName(String userName);
	
	List<AccessToken> findByUserName(String userName);
}