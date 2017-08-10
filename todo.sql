CREATE TABLE todo (
    id            SERIAL PRIMARY KEY NOT NULL,
    title         varchar(255) NOT NULL,
    details       varchar,
    priority      integer DEFAULT 1 NOT NULL,
    created_at    timestamp NOT NULL,
    completed_at  timestamp
);

INSERT INTO todo (title, details, priority, created_at) VALUES ('Catch-up on schoolwork', 'Buckle down and get past due assignments done', 1, clock_timestamp());
INSERT INTO todo (title, details, priority, created_at) VALUES ('Set my alarm for tomorrow', 'Gotta make sure to get to class on time', 1, clock_timestamp());
INSERT INTO todo (title, details, priority, created_at) VALUES ('Complete daily', 'To avoid getting further behind, keep up to date with new assignments', 1, clock_timestamp());
INSERT 0 1
INSERT INTO todo (title, details, priority, created_at) VALUES ('Dinner', 'Decide where to grab dinner quickly', 1, clock_timestamp());
INSERT 0 1
INSERT INTO todo (title, details, priority, created_at) VALUES ('Bed', 'Get to sleep at a decent time to make sure I'm ready for catch-up day tomorrow', 1, clock_timestamp());

SELECT * FROM todo WHERE priority >= 1;
UPDATE todo SET completed_at = TO_TIMESTAMP('2017-08-09 12-00-00', 'YYYY-MM-DD HH24:MI:SS') WHERE id = 3;
SELECT * FROM todo WHERE completed_at IS NULL;
DELETE FROM todo WHERE id=4;
