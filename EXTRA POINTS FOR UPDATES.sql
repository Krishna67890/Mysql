DELETE FROM users WHERE id = 3;
ALTER TABLE users ADD CONSTRAINT  chk_dob CHECK  (date_of_birth > '1920-01-01');
INSERT INTO users (name, email, gender, date_of_birth,salary) VALUES
(NULL,'RAJ12@gmail.com','Male','1934-03-20', 55000.00);

SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM users WHERE gender = "Female";
SELECT COUNT(*) FROM users WHERE gender = "Male";
SELECT MIN(salary) AS min_salary,MAX(salary) AS max_salary FROM users;

SELECT SUM(salary) AS avg_salary FROM users;
SELECT gender,AVG(salary) AS avg_salary FROM users GROUP BY gender;
DROP TABLE users;

SELECT id,gender,LOWER(name) as lower, CONCAT(LOWER(name),"2G52") as usernmae, DAY(date_of_birth) as day,  LENGTH(name) AS name_len FROM users;

