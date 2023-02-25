ALTER TABLE Users
ALTER COLUMN is_tutor DROP DEFAULT,
ALTER COLUMN is_restrict DROP DEFAULT,
ALTER COLUMN is_removed DROP DEFAULT,
ALTER COLUMN is_tutor TYPE boolean USING is_tutor::boolean,
ALTER COLUMN is_restrict TYPE boolean USING is_restrict::boolean,
ALTER COLUMN is_removed TYPE boolean USING is_removed::boolean,
ALTER COLUMN is_tutor SET DEFAULT FALSE,
ALTER COLUMN is_restrict SET DEFAULT FALSE,
ALTER COLUMN is_removed SET DEFAULT FALSE;

ALTER TABLE ChatConf
ALTER COLUMN isMute DROP DEFAULT,
ALTER COLUMN isBlock DROP DEFAULT,
ALTER COLUMN isMute TYPE boolean USING isMute::boolean,
ALTER COLUMN isBlock TYPE boolean USING isBlock::boolean,
ALTER COLUMN isMute SET DEFAULT FALSE,
ALTER COLUMN isBlock SET DEFAULT FALSE;

ALTER TABLE Arrangement
ALTER COLUMN is_accepted DROP DEFAULT,
ALTER COLUMN is_accepted TYPE boolean USING is_accepted::boolean,
ALTER COLUMN is_accepted SET DEFAULT FALSE;

ALTER TABLE Relationship
ALTER COLUMN type TYPE boolean USING type::boolean;

ALTER TABLE Groups
ALTER COLUMN is_public DROP DEFAULT,
ALTER COLUMN post_check DROP DEFAULT,
ALTER COLUMN is_removed DROP DEFAULT,
ALTER COLUMN is_public TYPE boolean USING is_public::boolean,
ALTER COLUMN post_check TYPE boolean USING post_check::boolean,
ALTER COLUMN is_removed TYPE boolean USING is_removed::boolean,
ALTER COLUMN is_public SET DEFAULT TRUE,
ALTER COLUMN post_check SET DEFAULT FALSE,
ALTER COLUMN is_removed SET DEFAULT FALSE;

ALTER TABLE GroupMember
ALTER COLUMN is_removed DROP DEFAULT,
ALTER COLUMN is_removed TYPE boolean USING is_removed::boolean,
ALTER COLUMN is_removed SET DEFAULT FALSE;

ALTER TABLE JoinGrpReq
ALTER COLUMN is_removed DROP DEFAULT,
ALTER COLUMN is_removed TYPE boolean USING is_removed::boolean,
ALTER COLUMN is_removed SET DEFAULT FALSE;

ALTER TABLE Post
ALTER COLUMN is_audio DROP DEFAULT,
ALTER COLUMN is_image DROP DEFAULT,
ALTER COLUMN is_group DROP DEFAULT,
ALTER COLUMN is_room DROP DEFAULT,
ALTER COLUMN is_share DROP DEFAULT,
ALTER COLUMN is_public DROP DEFAULT,
ALTER COLUMN is_video DROP DEFAULT,
ALTER COLUMN is_removed DROP DEFAULT,
ALTER COLUMN is_audio TYPE boolean USING is_audio::boolean,
ALTER COLUMN is_image TYPE boolean USING is_image::boolean,
ALTER COLUMN is_group TYPE boolean USING is_group::boolean,
ALTER COLUMN is_room TYPE boolean USING is_room::boolean,
ALTER COLUMN is_share TYPE boolean USING is_share::boolean,
ALTER COLUMN is_public TYPE boolean USING is_public::boolean,
ALTER COLUMN is_video TYPE boolean USING is_video::boolean,
ALTER COLUMN is_removed TYPE boolean USING is_removed::boolean,
ALTER COLUMN is_audio SET DEFAULT FALSE,
ALTER COLUMN is_image SET DEFAULT FALSE,
ALTER COLUMN is_group SET DEFAULT FALSE,
ALTER COLUMN is_room SET DEFAULT FALSE,
ALTER COLUMN is_share SET DEFAULT FALSE,
ALTER COLUMN is_public SET DEFAULT TRUE,
ALTER COLUMN is_video SET DEFAULT TRUE,
ALTER COLUMN is_removed SET DEFAULT FALSE;

ALTER TABLE GroupPost
ALTER COLUMN is_qualified DROP DEFAULT,
ALTER COLUMN is_hidden DROP DEFAULT,
ALTER COLUMN is_qualified TYPE boolean USING is_qualified::boolean,
ALTER COLUMN is_hidden TYPE boolean USING is_hidden::boolean,
ALTER COLUMN is_qualified SET DEFAULT TRUE,
ALTER COLUMN is_hidden SET DEFAULT FALSE;

ALTER TABLE AudioRoom
ALTER COLUMN is_closed DROP DEFAULT,
ALTER COLUMN is_closed TYPE boolean USING is_closed::boolean,
ALTER COLUMN is_closed SET DEFAULT FALSE;

ALTER TABLE VocabPackage
ALTER COLUMN is_public DROP DEFAULT,
ALTER COLUMN is_shared DROP DEFAULT,
ALTER COLUMN is_removed DROP DEFAULT,
ALTER COLUMN is_public TYPE boolean USING is_public::boolean,
ALTER COLUMN is_shared TYPE boolean USING is_shared::boolean,
ALTER COLUMN is_removed TYPE boolean USING is_removed::boolean,
ALTER COLUMN is_public SET DEFAULT TRUE,
ALTER COLUMN is_shared SET DEFAULT TRUE,
ALTER COLUMN is_removed SET DEFAULT FALSE;

ALTER TABLE Vocabulary
ALTER COLUMN is_removed DROP DEFAULT,
ALTER COLUMN is_removed TYPE boolean USING is_removed::boolean,
ALTER COLUMN is_removed SET DEFAULT FALSE;

ALTER TABLE Topic
ALTER COLUMN is_public DROP DEFAULT,
ALTER COLUMN is_removed DROP DEFAULT,
ALTER COLUMN is_public TYPE boolean USING is_public::boolean,
ALTER COLUMN is_removed TYPE boolean USING is_removed::boolean,
ALTER COLUMN is_public SET DEFAULT TRUE,
ALTER COLUMN is_removed SET DEFAULT FALSE;

ALTER TABLE PostTopic
ALTER COLUMN is_removed DROP DEFAULT,
ALTER COLUMN is_removed TYPE boolean USING is_removed::boolean,
ALTER COLUMN is_removed SET DEFAULT FALSE;

ALTER TABLE VocabPackage
ALTER COLUMN is_image DROP DEFAULT,
ALTER COLUMN is_correct DROP DEFAULT,
ALTER COLUMN is_audio DROP DEFAULT,
ALTER COLUMN is_removed DROP DEFAULT,
ALTER COLUMN is_image TYPE boolean USING is_image::boolean,
ALTER COLUMN is_correct TYPE boolean USING is_correct::boolean,
ALTER COLUMN is_audio TYPE boolean USING is_audio::boolean,
ALTER COLUMN is_removed TYPE boolean USING is_removed::boolean,
ALTER COLUMN is_image SET DEFAULT FALSE,
ALTER COLUMN is_correct SET DEFAULT FALSE,
ALTER COLUMN is_audio SET DEFAULT FALSE,
ALTER COLUMN is_removed SET DEFAULT FALSE;

ALTER TABLE Punishment
ALTER COLUMN is_restrict DROP DEFAULT,
ALTER COLUMN is_restrict TYPE boolean USING is_restrict::boolean,
ALTER COLUMN is_restrict SET DEFAULT FALSE;

ALTER TABLE GroupOpReq
ALTER COLUMN is_qualified DROP DEFAULT,
ALTER COLUMN is_qualified TYPE boolean USING is_qualified::boolean,
ALTER COLUMN is_qualified SET DEFAULT FALSE;

ALTER TABLE TutorReq
ALTER COLUMN is_qualified DROP DEFAULT,
ALTER COLUMN is_qualified TYPE boolean USING is_qualified::boolean,
ALTER COLUMN is_qualified SET DEFAULT FALSE;