ALTER TABLE NotiBox
ADD COLUMN userId uuid,
ADD CONSTRAINT fk_user_notibox FOREIGN KEY(userId) REFERENCES Users(userId);

DROP TABLE NotiType;
DROP TABLE Notifications;

CREATE TABLE PostNotifications (
	notiId uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
	boxId uuid NOT NULL,
	FOREIGN KEY(boxId) REFERENCES NotiBox(boxId),
	notifi_key text,
    notify_data text,
    postId uuid,
    type varchar(15),
    created_at timestamp without time zone default (now() at time zone 'utc'),
    updated_at timestamp without time zone default (now() at time zone 'utc')
);

CREATE TABLE CommentNotifications (
	notiId uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
	boxId uuid NOT NULL,
	FOREIGN KEY(boxId) REFERENCES NotiBox(boxId),
	notifi_key text,
    notify_data text,
    commentId uuid,
    created_at timestamp without time zone default (now() at time zone 'utc'),
    updated_at timestamp without time zone default (now() at time zone 'utc')
);

CREATE TABLE VocabPackageNotifications (
	notiId uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
	boxId uuid NOT NULL,
	FOREIGN KEY(boxId) REFERENCES NotiBox(boxId),
	notifi_key text,
    notify_data text,
    vocab_package_id uuid,
    created_at timestamp without time zone default (now() at time zone 'utc'),
    updated_at timestamp without time zone default (now() at time zone 'utc')
);

CREATE TABLE SharingNotifications (
	notiId uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
	notifi_key text,
    notify_data text,
    postId uuid,
    created_at timestamp without time zone default (now() at time zone 'utc'),
    updated_at timestamp without time zone default (now() at time zone 'utc')
);

CREATE TABLE NotiboxSharing (
    boxId uuid NOT NULL,
	FOREIGN KEY(boxId) REFERENCES NotiBox(boxId),
    notiId uuid NOT NULL,
    FOREIGN KEY(notiId) REFERENCES SharingNotifications(notiId),
	PRIMARY KEY(packageid,vocabId)
);

