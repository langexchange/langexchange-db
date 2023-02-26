ALTER TABLE Comment
DROP COLUMN is_image,
DROP COLUMN is_correct,
DROP COLUMN is_audio,
DROP COLUMN is_removed,
ADD COLUMN is_image boolean DEFAULT FALSE,
ADD COLUMN is_correct boolean DEFAULT FALSE,
ADD COLUMN is_audio boolean DEFAULT FALSE,
ADD COLUMN is_removed boolean DEFAULT FALSE;