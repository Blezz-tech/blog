CREATE TABLE posts (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    body TEXT NOT NULL
);
ALTER TABLE posts ADD COLUMN created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT now() NOT NULL;
CREATE INDEX posts_created_at_index ON posts (created_at);
ALTER TABLE posts DROP COLUMN created_at;
ALTER TABLE posts ADD COLUMN created_at TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL;
CREATE INDEX posts_created_at_index ON posts (created_at);
CREATE TABLE comments (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    post_id UUID NOT NULL,
    author TEXT NOT NULL,
    body TEXT NOT NULL
);
CREATE INDEX comments_post_id_index ON comments (post_id);
ALTER TABLE comments ADD CONSTRAINT comments_ref_post_id FOREIGN KEY (post_id) REFERENCES posts (id) ON DELETE CASCADE;
