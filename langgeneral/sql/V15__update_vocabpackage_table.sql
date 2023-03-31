ALTER TABLE VocabPackage
ADD COLUMN description varchar(512),
ADD COLUMN created_at timestamp without time zone default (now() at time zone 'utc'),
ADD COLUMN updated_at timestamp without time zone,
ADD COLUMN deleted_at timestamp without time zone;