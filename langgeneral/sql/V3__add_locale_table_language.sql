ALTER TABLE Language
ADD locale_code varchar(15);

ALTER TABLE Users
ADD native_level integer DEFAULT 1;

ALTER TABLE TargetLang
ADD target_level integer DEFAULT 1;
