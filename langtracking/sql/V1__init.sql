-- 1. CREATE ACCOUNT AND DATABASE
-- CREATE USER langteam with ENCRYPTED PASSWORD 'Aa1234';
-- CREATE DATABASE langex_tracking WITH OWNER = "langteam";

-- 2. DROP DATABASE
-- DROP DATABASE langex_tracking;

CREATE TABLE Users (
	userId int PRIMARY KEY,
	first_name varchar (64),
	middle_name varchar (64),
	last_name varchar (64)
);

CREATE TABLE Formular (
	formularId int PRIMARY KEY,
	formular_text varchar(128) NOT NULL,
	description varchar(256),
	achivementId int NOT NULL
);

CREATE TABLE Achivement (
	achivementId int PRIMARY KEY,
	name varchar(128) NOT NULL,
	description varchar(256),
	criteria_num int NOT NULL,
	formula_used int NOT NULL,
	FOREIGN KEY(formula_used) REFERENCES Formular(formularId)
);

ALTER TABLE Formular
ADD CONSTRAINT fk_formularof FOREIGN KEY(achivementId) REFERENCES Achivement(achivementId);

CREATE TABLE Badge (
	badgeId int PRIMARY KEY,
	point decimal(8,2) DEFAULT 0,
	name varchar(128) NOT NULL,
	description varchar(256),
	achivementId int NOT NULL,
	FOREIGN KEY(achivementId) REFERENCES Achivement(achivementId)
);

CREATE TABLE UserBadge (
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	badgeId int NOT NULL,
	FOREIGN KEY(badgeId) REFERENCES Badge(badgeId),
	PRIMARY KEY(userId,badgeId)
);

CREATE TABLE Speaker (
	stateId int PRIMARY KEY,
	join_times int DEFAULT 0,
	audio_post int DEFAULT 0,
	point decimal(8,2) DEFAULT 0,
	next_point decimal(8,2) DEFAULT 0,
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId)
);

CREATE TABLE SelfLearning (
	stateId int PRIMARY KEY,
	vocab_learned int DEFAULT 0,
	pronounce_used int DEFAULT 0,
	translate_used int DEFAULT 0,
	post_number int DEFAULT 0,
	point decimal(8,2) DEFAULT 0,
	next_point decimal(8,2) DEFAULT 0,
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId)
);

CREATE TABLE GoodMate (
	stateId int PRIMARY KEY,
	featured_answer int DEFAULT 0,
	liked_answer int DEFAULT 0,
	first_answer int DEFAULT 0,
	point decimal(8,2) DEFAULT 0,
	next_point decimal(8,2) DEFAULT 0,
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId)
);

CREATE TABLE Exchanger (
	stateId int PRIMARY KEY,
	featured_answer int DEFAULT 0,
	liked_answer int DEFAULT 0,
	first_answer int DEFAULT 0,
	point decimal(8,2) DEFAULT 0,
	next_point decimal(8,2) DEFAULT 0,
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId)
);

CREATE TABLE QualityTutor (
	stateId int PRIMARY KEY,
	featured_answer int DEFAULT 0,
	liked_answer int DEFAULT 0,
	first_answer int DEFAULT 0,
	point decimal(8,2) DEFAULT 0,
	next_point decimal(8,2) DEFAULT 0,
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId)
);

