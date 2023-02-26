ALTER TABLE Users
ADD COLUMN temp_token varchar(128);

ALTER TABLE Users
ADD COLUMN token_iat timestamp;
