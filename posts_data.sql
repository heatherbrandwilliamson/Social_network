DROP TABLE IF EXISTS "public"."users";

CREATE SEQUENCE IF NOT EXISTS users_id_seq;

CREATE TABLE "public"."users" (
    "id" SERIAL, 
    "email_address" TEXT,
    "user_name" TEXT
);

DROP TABLE IF EXISTS "public"."posts";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS posts_id_seq;


-- Then the table with the foreign key.
CREATE TABLE "public"."posts" (
  "id" INT,
  "title" TEXT,
  "content" TEXT,
  "views" INT
);

INSERT INTO "public"."users" ("id", "email_address", "user_name") VALUES
(1, 'heather@gmail.com', 'Heather89');

INSERT INTO "public"."posts" ("title", "content", "views") VALUES
('John', 'great blog post!', 25);

--ALTER TABLE "public"."posts" ADD FOREIGN KEY ("post_id") REFERENCES "public"."users"("id");