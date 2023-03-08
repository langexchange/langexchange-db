ALTER TABLE Users
ADD COLUMN created_at timestamp without time zone default (now() at time zone 'utc'),
ADD COLUMN updated_at timestamp without time zone;

ALTER TABLE Post
ADD COLUMN created_at timestamp without time zone default (now() at time zone 'utc'),
ADD COLUMN updated_at timestamp without time zone;

ALTER TABLE Vocabulary
ADD COLUMN created_at timestamp without time zone default (now() at time zone 'utc'),
ADD COLUMN updated_at timestamp without time zone;

ALTER TABLE Comment
ADD COLUMN created_at timestamp without time zone default (now() at time zone 'utc'),
ADD COLUMN updated_at timestamp without time zone;

ALTER TABLE Admin
ADD COLUMN created_at timestamp without time zone default (now() at time zone 'utc'),
ADD COLUMN updated_at timestamp without time zone,
ADD COLUMN deleted_at timestamp without time zone;