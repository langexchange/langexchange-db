ALTER TABLE Relationship
ADD COLUMN action varchar(15);
ALTER COLUMN type SET DEFAULT FALSE;