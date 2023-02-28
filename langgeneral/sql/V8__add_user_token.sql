ALTER TABLE Users
ADD COLUMN temp_token varchar(512);

ALTER TABLE Users
ADD COLUMN token_iat timestamp;