insert into oauth_client_details (client_id, client_secret, resource_ids, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove, logout_uri, base_uri) values ('ClientId', 'secret', null, 'read', 'authorization_code', null, 'ROLE_ADMIN', 36000, 2592000, null, 'true', null, null);