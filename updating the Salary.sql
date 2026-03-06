USE startersql;
UPDATE users SET salary = 45000 WHERE id=1;
UPDATE users SET salary = 45000,  email = 'krishYT@krish.com' WHERE id = 1;
UPDATE users SET salary=salary+10000 WHERE salary<60000;
DELETE FROM users WHERE salary<65000;
SELECT * FROM users;