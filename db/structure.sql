CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "provider" varchar, "uid" varchar, "name" varchar, "oauth_token" varchar, "oauth_expires_at" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "first_name" varchar, "last_name" varchar, "image" varchar);
CREATE TABLE "events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "location" varchar, "time" varchar, "authorID" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "datetime" datetime);
CREATE TABLE "events_users" ("event_id" integer NOT NULL, "user_id" integer NOT NULL);
INSERT INTO schema_migrations (version) VALUES ('20151105014956');

INSERT INTO schema_migrations (version) VALUES ('20151106071351');

INSERT INTO schema_migrations (version) VALUES ('20151110012552');

INSERT INTO schema_migrations (version) VALUES ('20151110063740');

INSERT INTO schema_migrations (version) VALUES ('20151112012647');

INSERT INTO schema_migrations (version) VALUES ('20151124015409');

INSERT INTO schema_migrations (version) VALUES ('20151207232629');

INSERT INTO schema_migrations (version) VALUES ('20151208000716');

INSERT INTO schema_migrations (version) VALUES ('20151208014143');

