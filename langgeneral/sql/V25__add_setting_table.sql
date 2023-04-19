CREATE TABLE Setting (
	id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
	service_name text default 'system',
    setting_key text,
    setting_value text,
    created_at timestamp without time zone default (now() at time zone 'utc'),
    updated_at timestamp without time zone
);

CREATE TABLE FriendNotifications (
	notiId uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
	boxId uuid NOT NULL,
	FOREIGN KEY(boxId) REFERENCES NotiBox(boxId),
	notifi_key text,
    notify_data text,
    created_at timestamp without time zone default (now() at time zone 'utc'),
    updated_at timestamp without time zone default (now() at time zone 'utc')
);