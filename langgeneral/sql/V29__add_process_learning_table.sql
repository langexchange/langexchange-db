CREATE TABLE StatisticalLearningProcess (
	id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
	userId uuid NOT NULL,
	FOREIGN KEY(userId) REFERENCES Users(userId),
    packageIds text,
	percent int default 0,
    totalVocabs int DEFAULT 0,
    currentVocabs int DEFAULT 0,
    created_at timestamp without time zone default (now() at time zone 'utc'),
    updated_at timestamp without time zone default (now() at time zone 'utc')
);