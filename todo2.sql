//create the table
CREATE TABLE todo2 (
    id            SERIAL PRIMARY KEY NOT NULL,
    title         varchar(50) NOT NULL,
    details       varchar (100),
    priority      integer DEFAULT 1 NOT NULL,
    created_at    timestamp NOT NULL,
    completed_at  timestamp
);

//add the todos
  INSERT INTO todo2 (title, priority, created_at) VALUES
("Wake up", 1, clock_timestamp());
  INSERT INTO todo2 (title, priority, created_at) VALUES
("Make breakfast", 3, clock_timestamp());
  INSERT INTO todo2 (title, priority, created_at) VALUES
("Grab a shower", 2, clock_timestamp());
  INSERT INTO todo2 (title, priority, created_at) VALUES
("Brush Teeth", 2, clock_timestamp());
  INSERT INTO todo2 (title, priority, created_at) VALUES
("Get dressed", 1, clock_timestamp());
    INSERT INTO todo2 (title, priority, created_at) VALUES
("Put on deoderant", 2, clock_timestamp());
    INSERT INTO todo2 (title, priority, created_at) VALUES
("Walk the dog", 1, clock_timestamp);
    INSERT INTO todo2 (title, priority, created_at) VALUES
("Take some me time", 5, clock_timestamp());
    INSERT INTO todo2 (title, priority, created_at) VALUES
("Start the car", 1, clock_timestamp());
    INSERT INTO todo2 (title, priority, created_at) VALUES
("Drive to school", 1, clock_timestamp());


  INSERT INTO todo2 (title, details, priority, created_at, completed_at) VALUES
("Walk to class", "make sure I have my entrance pass", 2, to_char(interval '8h 15m 00s', 'HH24:MI:SS'), to_char(interval '8h 50m 00s', 'HH24:MI:SS'));
  INSERT INTO todo2 (title, details, priority, created_at, completed_at) VALUES
("Claim my spot", "back of the class in one of the comfy chairs", 5, to_char(interval '8h 20m 00s', 'HH24:MI:SS'), to_char(interval '8h 57m 00s', 'HH24:MI:SS'));
  INSERT INTO todo2 (title, details, priority, created_at, completed_at) VALUES
("Be the first to claim an outlet", "2012 MacBook Pro battery probs", 4, to_char(interval '8h 21m 00s', 'HH24:MI:SS'), to_char(interval '8h 58m 00s', 'HH24:MI:SS'));
  INSERT INTO todo2 (title, details, priority, created_at, completed_at) VALUES
("Start up my computer", "depending on the mornings lecture", 3, to_char(interval '8h 23m 00s', 'HH24:MI:SS'), to_char(interval '8h 59m 00s', 'HH24:MI:SS'));
  INSERT INTO todo2 (title, details, priority, created_at, completed_at) VALUES
("Follow along with Dougs lecture", "take notes, become one with the pancake", 1, to_char(interval '8h 59m 00s', 'HH24:MI:SS'), to_char(interval '9h 01m 00s', 'HH24:MI:SS'));

  INSERT INTO todo2 (title, details, priority, created_at) VALUES
("Attempt the daily project", "or catch up if it is week 8 and I'm behind", 1, clock_timestamp());
  INSERT INTO todo2 (title, details, priority, created_at) VALUES
("Grab lunch", "which is almost always subway. I should really add making lunch to this list", 4, clock_timestamp());
  INSERT INTO todo2 (title, details, priority, created_at) VALUES
("Work further on the days activity", "which involves finding a comfy chair to sit in", 2, clock_timestamp());
  INSERT INTO todo2 (title, details, priority, created_at) VALUES
("Find music to work to", "turn on spotify and go to the metal playlist", 4, clock_timestamp());
  INSERT INTO todo2 (title, details, priority, created_at) VALUES
("5 o'clock!", "think about leaving but realize that you can get more done by staying a little late", 2 clock_timestamp());

//pick out certain parts of the table
SELECT * FROM todo2 WHERE priority = 3;
SELECT priority, COUNT(*) FROM todo2 WHERE completed_at IS NULL GROUP BY priority;
SELECT * FROM todo2 WHERE created_at = (SELECT min(created_at) FROM todo WHERE priority = 1 AND completed_at IS NULL);
SELECT * FROM todo2 WHERE completed_at >= 11hr 20min 0sec;
