ALTER TABLE Post
ADD COLUMN is_video bit(1) DEFAULT B'0';

CREATE TABLE VideoPost (
	videoPostId uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
	postId uuid NOT NULL,
	FOREIGN KEY(postId) REFERENCES Post(postId),
	url varchar(256)
);