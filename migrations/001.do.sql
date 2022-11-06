CREATE TABLE books(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title VARCHAR NOT NULL,
    author VARCHAR NOT NULL,
    owner_id VARCHAR
);
