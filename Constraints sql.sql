-- SELECT * from users;
-- ALTER TABLE users ADD column is_active BOOLEAN DEFAULT true;
-- ALTER TABLE users DROP COLUMN is_active;
-- ALTER TABLE users MODIFY COLUMN name VARCHAR(150);
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) AFTER id;
ALTER TABLE users MODIFY COLUMN date_of_birth datetime FIRST;
SELECT * from users;


