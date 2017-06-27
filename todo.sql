CREATE TABLE todolist (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(2000),
  priority INT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);

INSERT INTO todolist (title, priority, created_at, completed_at)
    VALUES ('Learn HTML', '5', '1999-12-31 23:59:59.99', '2000-10-25 23:59:59.99');

INSERT INTO todolist (title, priority, created_at)
    VALUES ('Learn CSS', '6', '1999-12-31 23:59:59.99');

INSERT INTO todolist (title, priority, created_at)
    VALUES ('Learn Javascript', '9', '1999-12-31 23:59:59.99');

INSERT INTO todolist (title, priority, created_at)
    VALUES ('Learn Node', '4', '1999-12-31 23:59:59.99');

INSERT INTO todolist (title, priority, created_at)
    VALUES ('Learn SQL', '1', '1999-12-31 23:59:59.99');

SELECT title FROM todolist WHERE completed_at ISNULL;

SELECT title FROM todolist WHERE priority > 1;

UPDATE todolist
SET completed_at = '2000-10-25 23:59:59.99'
WHERE id = 5;

DELETE FROM todolist
WHERE completed_at IS NOT NULL;
