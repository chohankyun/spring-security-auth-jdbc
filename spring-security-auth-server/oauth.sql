create table oauth_client_details (
  client_id VARCHAR(128) PRIMARY KEY,
  resource_ids VARCHAR(256),
  client_secret VARCHAR(256),
  scope VARCHAR(256),
  authorized_grant_types VARCHAR(256),
  web_server_redirect_uri VARCHAR(256),
  logout_uri VARCHAR(256),
  base_uri VARCHAR(256),
  authorities VARCHAR(256),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove VARCHAR(256)
);

create table oauth_access_token (
  token_id VARCHAR(256),
  token 	MEDIUMBLOB,
  authentication_id VARCHAR(128) PRIMARY KEY,
  user_name VARCHAR(256),
  client_id VARCHAR(256),
  authentication 	MEDIUMBLOB,
  refresh_token VARCHAR(256)
);


create table oauth_refresh_token (
  token_id VARCHAR(256),
  token MEDIUMBLOB,
  authentication MEDIUMBLOB
);


create table oauth_code (
  code VARCHAR(256), authentication MEDIUMBLOB
);

create table oauth_approvals (
	userId VARCHAR(256),
	clientId VARCHAR(256),
	scope VARCHAR(256),
	status VARCHAR(10),
	expiresAt TIMESTAMP,
	lastModifiedAt TIMESTAMP
);



insert into oauth_client_details 
(client_id, client_secret, resource_ids, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove, logout_uri, base_uri) 
values 
('ClientId', 'secret', null, 'read', 'authorization_code', null, 'ROLE_ADMIN', 36000, 2592000, null, 'true', null, null);