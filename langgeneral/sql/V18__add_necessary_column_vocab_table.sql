ALTER TABLE Vocabulary
DROP COLUMN last_learned,
ADD COLUMN last_learned timestamp without time zone,
DROP COLUMN next_learned,
ADD COLUMN next_learned timestamp without time zone,
DROP COLUMN repetitions,
DROP COLUMN easiness,
DROP COLUMN interval;

CREATE TABLE IntervalSetting(
    settingId uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    userId uuid NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
    know_interval int DEFAULT 5,
    medium_interval int DEFAULT 3,
    hard_interval int DEFAULT 1
);
