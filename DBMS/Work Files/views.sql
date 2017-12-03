SELECT * FROM employee;

CREATE VIEW emp_view AS 
SELECT id, name , email FROM employee
WHERE name IS NOT NULL;

SELECT * FROM employee;

INSERT INTO emp_view 
VALUES(1005,'Cruze','cruze@gmail.com');


INSERT INTO emp_view 
VALUES(1006,null,'cruze@gmail.com');

# gives error on inserting a new row in view with violation of check
CREATE VIEW emp_view_new AS 
SELECT id, name , email FROM employee
WHERE name IS NOT NULL
WITH CHECK OPTION;

INSERT INTO emp_view_new
VALUES(1006,null,'cruze@gmail.com');

UPDATE emp_view
SET name = 'james'
WHERE id= 1005;

DROP VIEW emp_view;

