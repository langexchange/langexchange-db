ALTER TABLE Users
DROP COLUMN is_tutor,
DROP COLUMN is_restrict,
DROP COLUMN is_removed,
ADD COLUMN is_tutor boolean DEFAULT FALSE,
ADD COLUMN is_restrict boolean DEFAULT FALSE,
ADD COLUMN is_removed boolean DEFAULT FALSE;

ALTER TABLE ChatConf
DROP COLUMN isMute,
DROP COLUMN isBlock,
ADD COLUMN isMute boolean DEFAULT FALSE,
ADD COLUMN isBlock boolean DEFAULT FALSE;

ALTER TABLE Arrangement
DROP COLUMN is_accepted,
ADD COLUMN is_accepted boolean DEFAULT FALSE;

ALTER TABLE Relationship
DROP COLUMN  type,
ADD COLUMN type boolean;

ALTER TABLE Groups
DROP COLUMN is_public,
DROP COLUMN post_check,
DROP COLUMN is_removed,
ADD COLUMN is_public boolean DEFAULT TRUE,
ADD COLUMN post_check boolean DEFAULT FALSE,
ADD COLUMN is_removed boolean DEFAULT FALSE;

ALTER TABLE GroupMember
DROP COLUMN is_removed,
ADD COLUMN is_removed boolean DEFAULT FALSE;

ALTER TABLE JoinGrpReq
DROP COLUMN is_removed,
ADD COLUMN is_removed boolean DEFAULT FALSE;

ALTER TABLE Post
DROP COLUMN is_audio,
DROP COLUMN is_image,
DROP COLUMN is_group,
DROP COLUMN is_room,
DROP COLUMN is_share,
DROP COLUMN is_public,
DROP COLUMN is_video,
DROP COLUMN is_removed,
ADD COLUMN is_audio boolean DEFAULT FALSE,
ADD COLUMN is_image boolean DEFAULT FALSE,
ADD COLUMN is_group boolean DEFAULT FALSE,
ADD COLUMN is_room boolean DEFAULT FALSE,
ADD COLUMN is_share boolean DEFAULT FALSE,
ADD COLUMN is_public boolean DEFAULT TRUE,
ADD COLUMN is_video boolean DEFAULT TRUE,
ADD COLUMN is_removed boolean DEFAULT FALSE;

ALTER TABLE GroupPost
DROP COLUMN is_qualified,
DROP COLUMN is_hidden,
ADD COLUMN is_qualified boolean DEFAULT TRUE,
ADD COLUMN is_hidden boolean DEFAULT FALSE;

ALTER TABLE AudioRoom
DROP COLUMN is_closed,
ADD COLUMN is_closed boolean DEFAULT FALSE;

ALTER TABLE VocabPackage
DROP COLUMN is_public,
DROP COLUMN is_shared,
DROP COLUMN is_removed,
ADD COLUMN is_public boolean DEFAULT TRUE,
ADD COLUMN is_shared boolean DEFAULT TRUE,
ADD COLUMN is_removed boolean DEFAULT FALSE;

ALTER TABLE Vocabulary
DROP COLUMN is_removed,
ADD COLUMN is_removed boolean DEFAULT FALSE;

ALTER TABLE Topic
DROP COLUMN is_public,
DROP COLUMN is_removed,
ADD COLUMN is_public boolean DEFAULT TRUE,
ADD COLUMN is_removed boolean DEFAULT FALSE;

ALTER TABLE PostTopic
DROP COLUMN is_removed,
ADD COLUMN is_removed boolean DEFAULT FALSE;

ALTER TABLE VocabPackage
DROP COLUMN is_image,
DROP COLUMN is_correct,
DROP COLUMN is_audio,
DROP COLUMN is_removed,
ADD COLUMN is_image boolean DEFAULT FALSE,
ADD COLUMN is_correct boolean DEFAULT FALSE,
ADD COLUMN is_audio boolean DEFAULT FALSE,
ADD COLUMN is_removed boolean DEFAULT FALSE;

ALTER TABLE Punishment
DROP COLUMN is_restrict,
ADD COLUMN is_restrict boolean DEFAULT FALSE;

ALTER TABLE GroupOpReq
DROP COLUMN is_qualified,
ADD COLUMN is_qualified boolean DEFAULT FALSE;

ALTER TABLE TutorReq
DROP COLUMN is_qualified,
ADD COLUMN is_qualified boolean DEFAULT FALSE;