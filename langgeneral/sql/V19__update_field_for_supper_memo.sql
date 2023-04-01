DROP TABLE IntervalSetting;

ALTER TABLE Vocabulary
DROP COLUMN vocabId,
ADD COLUMN vocabId uuid,
ADD COLUMN repetitions int DEFAULT 0,
ADD COLUMN easiness decimal(5,1) DEFAULT 2.5,
ADD COLUMN interval int DEFAULT 0;