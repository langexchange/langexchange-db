DROP TABLE IntervalSetting;

ALTER TABLE Vocabulary
ADD repetitions int DEFAULT 0,
ADD easiness decimal(5,1) DEFAULT 2.5,
ADD interval int DEFAULT 0,;