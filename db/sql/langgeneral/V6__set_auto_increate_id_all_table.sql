create sequence Language_seq_id owned by Language.langId;
ALTER TABLE Language ALTER COLUMN langId set default nextval('Language_seq_id');
create sequence NotiBox_seq_id owned by NotiBox.boxId;
ALTER TABLE NotiBox ALTER COLUMN boxId set default nextval('NotiBox_seq_id');
create sequence NotiType_seq_id owned by NotiType.typeId;
ALTER TABLE NotiType ALTER COLUMN typeId set default nextval('NotiType_seq_id');
create sequence Notifications_seq_id owned by Notifications.notiId;
ALTER TABLE Notifications ALTER COLUMN notiId set default nextval('Notifications_seq_id');
create sequence Users_seq_id owned by Users.userId;
ALTER TABLE Users ALTER COLUMN userId set default nextval('Users_seq_id');
create sequence Messages_seq_id owned by Messages.messId;
ALTER TABLE Messages ALTER COLUMN messId set default nextval('Messages_seq_id');
create sequence CorrectMsg_seq_id owned by CorrectMsg.messId;
ALTER TABLE CorrectMsg ALTER COLUMN messId set default nextval('CorrectMsg_seq_id');
create sequence ImageMsg_seq_id owned by ImageMsg.messId;
ALTER TABLE ImageMsg ALTER COLUMN messId set default nextval('ImageMsg_seq_id');
create sequence ImageMsgUrl_seq_id owned by ImageMsgUrl.urlId;
ALTER TABLE ImageMsgUrl ALTER COLUMN urlId set default nextval('ImageMsgUrl_seq_id');
create sequence AudioMsg_seq_id owned by AudioMsg.messId;
ALTER TABLE AudioMsg ALTER COLUMN messId set default nextval('AudioMsg_seq_id');
create sequence AudioMsgUrl_seq_id owned by AudioMsgUrl.urlId;
ALTER TABLE AudioMsgUrl ALTER COLUMN urlId set default nextval('AudioMsgUrl_seq_id');
create sequence ChatConf_seq_id owned by ChatConf.confId;
ALTER TABLE ChatConf ALTER COLUMN confId set default nextval('ChatConf_seq_id');
create sequence Arrangement_seq_id owned by Arrangement.arrangeId;
ALTER TABLE Arrangement ALTER COLUMN arrangeId set default nextval('Arrangement_seq_id');
create sequence VocabGoal_seq_id owned by VocabGoal.goalId;
ALTER TABLE VocabGoal ALTER COLUMN goalId set default nextval('VocabGoal_seq_id');
create sequence Hobby_seq_id owned by Hobby.hobbyId;
ALTER TABLE Hobby ALTER COLUMN hobbyId set default nextval('Hobby_seq_id');
create sequence Groups_seq_id owned by Groups.groupId;
ALTER TABLE Groups ALTER COLUMN groupId set default nextval('Groups_seq_id');
create sequence Role_seq_id owned by Role.roleId;
ALTER TABLE Role ALTER COLUMN roleId set default nextval('Role_seq_id');
create sequence Post_seq_id owned by Post.postId;
ALTER TABLE Post ALTER COLUMN postId set default nextval('Post_seq_id');
create sequence Interaction_seq_id owned by Interaction.interactId;
ALTER TABLE Interaction ALTER COLUMN interactId set default nextval('Interaction_seq_id');
create sequence PostReport_seq_id owned by PostReport.postReportId;
ALTER TABLE PostReport ALTER COLUMN postReportId set default nextval('PostReport_seq_id');
create sequence GroupPost_seq_id owned by GroupPost.postId;
ALTER TABLE GroupPost ALTER COLUMN postId set default nextval('GroupPost_seq_id');
create sequence ImagePost_seq_id owned by ImagePost.postId;
ALTER TABLE ImagePost ALTER COLUMN postId set default nextval('ImagePost_seq_id');
create sequence AudioPost_seq_id owned by AudioPost.postId;
ALTER TABLE AudioPost ALTER COLUMN postId set default nextval('AudioPost_seq_id');
create sequence SharePost_seq_id owned by SharePost.postId;
ALTER TABLE SharePost ALTER COLUMN postId set default nextval('SharePost_seq_id');
create sequence AudioRoom_seq_id owned by AudioRoom.roomId;
ALTER TABLE AudioRoom ALTER COLUMN roomId set default nextval('AudioRoom_seq_id');
create sequence UserInRoom_seq_id owned by UserInRoom.userId;
ALTER TABLE UserInRoom ALTER COLUMN userId set default nextval('UserInRoom_seq_id');
create sequence RoomPost_seq_id owned by RoomPost.postId;
ALTER TABLE RoomPost ALTER COLUMN postId set default nextval('RoomPost_seq_id');
create sequence VocabPackage_seq_id owned by VocabPackage.packageId;
ALTER TABLE VocabPackage ALTER COLUMN packageId set default nextval('VocabPackage_seq_id');
create sequence Topic_seq_id owned by Topic.topicId;
ALTER TABLE Topic ALTER COLUMN topicId set default nextval('Topic_seq_id');
create sequence Comment_seq_id owned by Comment.commentId;
ALTER TABLE Comment ALTER COLUMN commentId set default nextval('Comment_seq_id');
create sequence AudioCmt_seq_id owned by AudioCmt.commentId;
ALTER TABLE AudioCmt ALTER COLUMN commentId set default nextval('AudioCmt_seq_id');
create sequence ImageCmt_seq_id owned by ImageCmt.commentId;
ALTER TABLE ImageCmt ALTER COLUMN commentId set default nextval('ImageCmt_seq_id');
create sequence CorrectCmt_seq_id owned by CorrectCmt.commentId;
ALTER TABLE CorrectCmt ALTER COLUMN commentId set default nextval('CorrectCmt_seq_id');
create sequence CmtReport_seq_id owned by CmtReport.cmtReportId;
ALTER TABLE CmtReport ALTER COLUMN cmtReportId set default nextval('CmtReport_seq_id');
create sequence Admin_seq_id owned by Admin.adminId;
ALTER TABLE Admin ALTER COLUMN adminId set default nextval('Admin_seq_id');
create sequence Punishment_seq_id owned by Punishment.punishId;
ALTER TABLE Punishment ALTER COLUMN punishId set default nextval('Punishment_seq_id');
create sequence PostPunish_seq_id owned by PostPunish.postId;
ALTER TABLE PostPunish ALTER COLUMN postId set default nextval('PostPunish_seq_id');
create sequence CmtPunish_seq_id owned by CmtPunish.commentId;
ALTER TABLE CmtPunish ALTER COLUMN commentId set default nextval('CmtPunish_seq_id');
create sequence Restrict_seq_id owned by Restrict.restrictId;
ALTER TABLE Restrict ALTER COLUMN restrictId set default nextval('Restrict_seq_id');
create sequence GroupOpReq_seq_id owned by GroupOpReq.requestId;
ALTER TABLE GroupOpReq ALTER COLUMN requestId set default nextval('GroupOpReq_seq_id');
create sequence TutorReq_seq_id owned by TutorReq.requestId;
ALTER TABLE TutorReq  ALTER COLUMN requestId set default nextval('TutorReq_seq_id');