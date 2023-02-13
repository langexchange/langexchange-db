-- 1. CREATE ACCOUNT AND DATABASE
-- CREATE USER langteam with ENCRYPTED PASSWORD 'Aa1234';
-- CREATE DATABASE langex_general WITH OWNER = "langteam";

-- 2. DROP DATABASE
-- DROP DATABASE langex_general;

CREATE TABLE Language (
   langId int PRIMARY KEY,
   name varchar(255)
);

CREATE TABLE NotiBox (
   boxId int PRIMARY KEY
);

CREATE TABLE NotiType (
	typeId int PRIMARY KEY,
	typestring varchar(32) NOT NULL,
	sample varchar(512) NOT NULL
);

CREATE TABLE Notifications (
	notiId int PRIMARY KEY,
	boxId int NOT NULL,
	FOREIGN KEY(boxId) REFERENCES NotiBox(boxId),
	text varchar(512) NOT NULL,
	url varchar(256) NOT NULL,
	type int NOT NULL,
	FOREIGN KEY(type) REFERENCES NotiType(typeId)
);



CREATE TABLE Users (
	userId int PRIMARY KEY,
	longtt decimal(9,6),
	latt decimal(8,6),
	native_lang int,
	FOREIGN KEY(native_lang) REFERENCES Language(langId),
	notiBox int,
	FOREIGN KEY(notiBox) REFERENCES NotiBox(boxId),
	email varchar(255) NOT NULL,
	password varchar(128) NOT NULL,
	first_name varchar(64) NOT NULL,
	middle_name varchar(64),
	last_name  varchar(64) NOT NULL,
	gender varchar(5) NOT NULL,	
	introduction varchar(1024),
	is_tutor bit(1) DEFAULT B'0',
	is_restrict bit(1) DEFAULT B'0',
	is_removed bit(1) DEFAULT B'0'
);

CREATE TABLE Messages (
	messId int PRIMARY KEY,
	sender int,
	FOREIGN KEY(sender) REFERENCES Users(userId),
	receiver int,
	FOREIGN KEY(receiver) REFERENCES Users(userId),
	text varchar(1024)
);

CREATE TABLE CorrectMsg (
	messId int PRIMARY KEY,
	FOREIGN KEY(messId) REFERENCES Messages(messId),
	correct_text varchar(1024)
);

CREATE TABLE ImageMsg (
	messId int PRIMARY KEY,
	FOREIGN KEY(messId) REFERENCES Messages(messId)
);

CREATE TABLE ImageMsgUrl (
	urlId int PRIMARY KEY,
	messId int,
	FOREIGN KEY(messId) REFERENCES ImageMsg(messId),
	url varchar(256)
);


CREATE TABLE AudioMsg (
	messId int PRIMARY KEY,
	FOREIGN KEY(messId) REFERENCES Messages(messId),
	url varchar(256) NOT NULL
);

CREATE TABLE AudioMsgUrl (
	urlId int PRIMARY KEY,
	messId int,
	FOREIGN KEY(messId) REFERENCES AudioMsg(messId),
	url varchar(256)
);


CREATE TABLE ChatConf (
	confId int PRIMARY KEY,
	isMute bit(1) DEFAULT B'0',
	isBlock bit(1) DEFAULT B'0',
	sender int,
	FOREIGN KEY(sender) REFERENCES Users(userId),
	receiver int,
	FOREIGN KEY(receiver) REFERENCES Users(userId)
);



CREATE TABLE Arrangement (
	arrangeId int PRIMARY KEY,
	confId int NOT NULL,
	FOREIGN KEY(confId) REFERENCES ChatConf(confId),
	time_started timestamptz, 
	time_ended timestamptz,
	is_accepted bit(1) DEFAULT B'0'
);



CREATE TABLE VocabGoal (
	goalId int PRIMARY KEY,
	amount int DEFAULT 0,
	type varchar(20)
);


CREATE TABLE Relationship (
	user_1 int,
	FOREIGN KEY(user_1) REFERENCES Users(userId),
	user_2 int,
	FOREIGN KEY(user_2) REFERENCES Users(userId),
	PRIMARY KEY(user_1, user_2),
	type bit(1) NOT NULL
);

CREATE TABLE Hobby (
	hobbyId int PRIMARY KEY,
	name varchar(128) NOT NULL
);

CREATE TABLE UserHobby (
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	hobbyId int NOT NULL,
	FOREIGN KEY(hobbyId) REFERENCES Hobby(hobbyId),
	PRIMARY KEY(userId, hobbyId)
);

CREATE TABLE TargetLang (
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	langId int NOT NULL,
	FOREIGN KEY(langId) REFERENCES Language(langId),
	PRIMARY KEY(userId,langId)
);

CREATE TABLE Groups (
	groupId int PRIMARY KEY,
	name varchar(128),
	introduction varchar(1024),
	requirement varchar(1024),
	is_public bit(1) DEFAULT B'1',
	post_check bit(1) DEFAULT B'0',
	is_removed	bit(1) DEFAULT B'0'
);

CREATE TABLE Role(
	roleId int PRIMARY KEY,
	strRole varchar(10) NOT NULL
);

CREATE TABLE GroupMember (
	userId int NOT NULL, 
	FOREIGN KEY(userId) REFERENCES Users(userId),
	groupId int NOT NULL,
	FOREIGN KEY(groupId) REFERENCES Groups(groupId),
	PRIMARY KEY(userId, groupId),
	roleId int NOT NULL,
	FOREIGN KEY(roleId) REFERENCES Role(roleId),
	restrict_level bit(2) DEFAULT B'00',	
	is_removed bit(1) DEFAULT B'0'
);

CREATE TABLE JoinGrpReq (
	userId int,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	groupId int,
	FOREIGN KEY(groupId) REFERENCES Groups(groupId),
	PRIMARY KEY(userId, groupId),
	is_removed bit(1) DEFAULT B'0'
);

CREATE TABLE Post (
	postId int PRIMARY KEY,
	userId int,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	text varchar(4096),
	langId int,
	FOREIGN KEY(langId) REFERENCES Language(langId),
	restrict_bits bit(3) DEFAULT B'000',
	is_audio bit(1) DEFAULT B'0',
	is_image bit(1) DEFAULT B'0',
	is_group bit(1) DEFAULT B'0',
	is_room bit(1) DEFAULT B'0',
	is_share bit(1) DEFAULT B'0',
	is_public bit(1) DEFAULT B'1',
	is_removed bit(1) DEFAULT B'0'
);

CREATE TABLE Interaction (
	interactId int PRIMARY KEY,
	stringCode varchar(16) NOT NULL
);

CREATE TABLE UserIntPost (
	postId int NOT NULL,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	PRIMARY KEY(postId, userId),
	interact_type int NOT NULL,
	FOREIGN KEY(interact_type) REFERENCES Interaction(interactId)
);

CREATE TABLE PostReport (
	postReportId int PRIMARY KEY,
	reason varchar(256) NOT NULL
);

CREATE TABLE UserReportPst (
	postReportId int NOT NULL,
	FOREIGN KEY(postReportId) REFERENCES PostReport(postReportId),
	postId int NOT NULL,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	PRIMARY KEY(postReportId,postId,userId),
	statement varchar(512)
);



CREATE TABLE GroupPost (
	postId int PRIMARY KEY,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	groupId int NOT NULL,
	FOREIGN KEY(groupId) REFERENCES Groups(groupId),
	is_qualified bit(1) DEFAULT B'1',
	is_hidden bit(1) DEFAULT B'0'
);

CREATE TABLE ImagePost (
	postId int PRIMARY KEY,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	url varchar(256)
);

CREATE TABLE AudioPost (
	postId int PRIMARY KEY,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	url varchar(256)
);

CREATE TABLE SharePost (
	postId int PRIMARY KEY,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	sharedpst int NOT NULL,
	FOREIGN KEY(sharedpst) REFERENCES Post(postId)
);

CREATE TABLE AudioRoom (
	roomId int PRIMARY KEY,
	owner int NOT NULL,
	FOREIGN KEY(owner) REFERENCES Users(userId),
	is_closed bit(1) DEFAULT B'0'
);

CREATE TABLE UserInRoom (
	userId int PRIMARY KEY,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	roomId int NOT NULL,
	FOREIGN KEY(roomId) REFERENCES AudioRoom(roomId)
);

CREATE TABLE RoomPost (
	postId int PRIMARY KEY,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	roomId int NOT NULL,
	FOREIGN KEY(roomId) REFERENCES AudioRoom(roomId)
);

CREATE TABLE VocabPackage (
	packageId int PRIMARY KEY,
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	name varchar(128) NOT NULL,
	is_public bit(1) DEFAULT B'1',
	is_shared bit(1) DEFAULT B'1',
	is_removed bit(1) DEFAULT B'0'
);


CREATE TABLE Vocabulary (
	packageId int,
	FOREIGN KEY(packageId) REFERENCES VocabPackage(packageId),
	vocabId int NOT NULL,
	PRIMARY KEY(packageid,vocabId),
	imageURL varchar(256),
	front varchar(128),
	back varchar(128),
	type varchar(32) DEFAULT 'slide',
	last_learned timestamptz,
	next_learned timestamptz,
	repetitions int DEFAULT 0,
	easiness decimal(5,1) DEFAULT 2.5,
	interval int DEFAULT 0, 
	is_removed bit(1) DEFAULT B'0'
);

CREATE TABLE Topic (
	topicId int PRIMARY KEY,
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	name varchar(128),
	is_public bit(1) DEFAULT B'1',
	is_removed bit(1) DEFAULT B'0'
);

CREATE TABLE PostTopic (
	topicId int NOT NULL,
	FOREIGN KEY(topicId) REFERENCES Topic(topicId),
	postId int NOT NULL,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	PRIMARY KEY(topicId,postId),
	is_removed bit(1) DEFAULT B'0'
);

CREATE TABLE Comment (
	commentId int PRIMARY KEY,
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	postId int NOT NULL,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	text varchar(2048),
	is_image bit(1) DEFAULT B'0',
	is_correct bit(1) DEFAULT B'0',
	is_audio bit(1) DEFAULT B'0',
	is_removed bit(1) DEFAULT B'0'
);

CREATE TABLE AudioCmt (
	commentId int PRIMARY KEY,
	FOREIGN KEY(commentId) REFERENCES Comment(commentId),
	url varchar(256) NOT NULL
);

CREATE TABLE ImageCmt (
	commentId int PRIMARY KEY,
	FOREIGN KEY(commentId) REFERENCES Comment(commentId),
	url varchar(256) NOT NULL
);

CREATE TABLE CorrectCmt (
	commentId int PRIMARY KEY,
	FOREIGN KEY(commentId) REFERENCES Comment(commentId),
	correct_text varchar(2048)
);

CREATE TABLE CmtInteract (
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	commentId int NOT NULL,
	FOREIGN KEY(commentId) REFERENCES Comment(commentId),
	PRIMARY KEY(userId, commentId),
	interact_type int NOT NULL,
	FOREIGN KEY(interact_type) REFERENCES Interaction(interactId)
);

CREATE TABLE CmtReport (
	cmtReportId int PRIMARY KEY,
	reason varchar(256) NOT NULL
);

CREATE TABLE UsrReportCmt (
	cmtReportId int NOT NULL,
	FOREIGN KEY(cmtReportId) REFERENCES CmtReport(cmtReportId),
	commentId int NOT NULL,
	FOREIGN KEY(commentId) REFERENCES Comment(commentId),
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	PRIMARY KEY(cmtReportId, userId, commentId),
	statement varchar(512)
);

CREATE TABLE Admin (
	adminId int PRIMARY KEY,
	email varchar(128) NOT NULL,
	password varchar(128) NOT NULL,
	first_name varchar(64) NOT NULL,
	remain_name varchar(64) NOT NULL
);

CREATE TABLE Punishment (
	punishId int PRIMARY KEY,
	is_restrict bit(1) DEFAULT B'0',
	relapse int DEFAULT 0,
	type varchar(32)
);

CREATE TABLE GroupPunish (
	adminId int NOT NULL,
	FOREIGN KEY(adminId) REFERENCES Admin(adminId),
	groupId int NOT NULL,
	FOREIGN KEY(groupId) REFERENCES Groups(groupId),
	punishId int NOT NULL,
	FOREIGN KEY(punishId) REFERENCES Punishment(punishId),
	PRIMARY KEY(adminId, groupId, punishId)
);

CREATE TABLE PostPunish (
	postId int PRIMARY KEY,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	adminId int NOT NULL,
	FOREIGN KEY(adminId) REFERENCES Admin(adminId),
	punishId int NOT NULL,
	FOREIGN KEY(punishId) REFERENCES Punishment(punishId),
	userId int
);

CREATE TABLE CmtPunish (
	commentId int PRIMARY KEY,
	FOREIGN KEY(commentId) REFERENCES Comment(commentId),
	adminId int NOT NULL,
	FOREIGN KEY(adminId) REFERENCES Admin(adminId),
	punishId int NOT NULL,
	FOREIGN KEY(punishId) REFERENCES Punishment(punishId),
	userId int
);

CREATE TABLE UserPunish (
	adminId int NOT NULL,
	FOREIGN KEY(adminId) REFERENCES Admin(adminId),
	userId int NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
	punishId int NOT NULL,
	FOREIGN KEY(punishId) REFERENCES Punishment(punishId),
	PRIMARY KEY(adminId, userId, punishId)
);

CREATE TABLE Restrict (
	restrictId int PRIMARY KEY,
	days int,
	restrict_code varchar(32),
	description varchar(256)
);

CREATE TABLE RestrictPunish (
	punishId int NOT NULL,
	FOREIGN KEY(punishId) REFERENCES Punishment(punishId),
	restrictId int NOT NULL,
	FOREIGN KEY(restrictId) REFERENCES Restrict(restrictId),
	PRIMARY KEY(punishId, restrictId)
);

CREATE TABLE GroupOpReq (
	requestId int PRIMARY KEY,
	ownerId int NOT NULL,
	FOREIGN KEY(ownerId) REFERENCES Users(userId),
	text varchar(2048),
	is_qualified bit(1) DEFAULT B'0'
);

CREATE TABLE TutorReq (
	requestId int PRIMARY KEY,
	ownerId int NOT NULL,
	FOREIGN KEY(ownerId) REFERENCES Users(userId),
	text varchar(2048),
	is_qualified bit(1) DEFAULT B'0'
);