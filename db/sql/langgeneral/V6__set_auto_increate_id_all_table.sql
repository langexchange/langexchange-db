ALTER TABLE Language ALTER COLUMN langId SERIAL PRIMARY KEY;
ALTER TABLE NotiBox ALTER COLUMN boxId SERIAL PRIMARY KEY;
ALTER TABLE NotiType ALTER COLUMN typeId  SERIAL PRIMARY KEY;
ALTER TABLE Notifications ALTER COLUMN notiId SERIAL PRIMARY KEY;
ALTER TABLE Users ALTER COLUMN userId SERIAL PRIMARY KEY;
ALTER TABLE Messages ALTER COLUMN messId SERIAL PRIMARY KEY;
ALTER TABLE CorrectMsg ALTER COLUMN messId SERIAL PRIMARY KEY;
ALTER TABLE ImageMsg ALTER COLUMN messId SERIAL PRIMARY KEY;
ALTER TABLE ImageMsgUrl ALTER COLUMN urlId SERIAL PRIMARY KEY;
ALTER TABLE AudioMsg ALTER COLUMN messId SERIAL PRIMARY KEY;
ALTER TABLE AudioMsgUrl ALTER COLUMN urlId SERIAL PRIMARY KEY;
ALTER TABLE ChatConf ALTER COLUMN confId SERIAL PRIMARY KEY;
ALTER TABLE Arrangement ALTER COLUMN arrangeId SERIAL PRIMARY KEY;
ALTER TABLE VocabGoal ALTER COLUMN goalId SERIAL PRIMARY KEY;
ALTER TABLE Hobby ALTER COLUMN hobbyId SERIAL PRIMARY KEY;
ALTER TABLE Groups ALTER COLUMN groupId SERIAL PRIMARY KEY;
ALTER TABLE Role ALTER COLUMN roleId SERIAL PRIMARY KEY;
ALTER TABLE Post ALTER COLUMN postId SERIAL PRIMARY KEY;
ALTER TABLE Interaction ALTER COLUMN interactId SERIAL PRIMARY KEY;
ALTER TABLE PostReport ALTER COLUMN postReportId SERIAL PRIMARY KEY;
ALTER TABLE GroupPost ALTER COLUMN postId SERIAL PRIMARY KEY;
ALTER TABLE ImagePost ALTER COLUMN postId SERIAL PRIMARY KEY;
ALTER TABLE AudioPost ALTER COLUMN postId SERIAL PRIMARY KEY;
ALTER TABLE SharePost ALTER COLUMN postId SERIAL PRIMARY KEY;
ALTER TABLE AudioRoom ALTER COLUMN roomId SERIAL PRIMARY KEY;
ALTER TABLE UserInRoom ALTER COLUMN userId SERIAL PRIMARY KEY;
ALTER TABLE RoomPost ALTER COLUMN postId SERIAL PRIMARY KEY;
ALTER TABLE VocabPackage ALTER COLUMN packageId SERIAL PRIMARY KEY;
ALTER TABLE Topic ALTER COLUMN topicId SERIAL PRIMARY KEY;
ALTER TABLE Comment ALTER COLUMN commentId SERIAL PRIMARY KEY;
ALTER TABLE AudioCmt ALTER COLUMN commentId SERIAL PRIMARY KEY;
ALTER TABLE ImageCmt ALTER COLUMN commentId SERIAL PRIMARY KEY;
ALTER TABLE CorrectCmt ALTER COLUMN commentId SERIAL PRIMARY KEY;
ALTER TABLE CmtReport ALTER COLUMN cmtReportId SERIAL PRIMARY KEY;
ALTER TABLE Admin ALTER COLUMN adminId SERIAL PRIMARY KEY;
ALTER TABLE Punishment ALTER COLUMN punishId SERIAL PRIMARY KEY;
ALTER TABLE PostPunish ALTER COLUMN postId SERIAL PRIMARY KEY;
ALTER TABLE CmtPunish ALTER COLUMN commentId SERIAL PRIMARY KEY;
ALTER TABLE Restrict ALTER COLUMN restrictId SERIAL PRIMARY KEY;
ALTER TABLE GroupOpReq ALTER COLUMN requestId SERIAL PRIMARY KEY;
ALTER TABLE TutorReq  ALTER COLUMN requestId SERIAL PRIMARY KEY;