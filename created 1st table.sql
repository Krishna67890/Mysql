USE StarterSql;
SELECT * FROM users;
INSERT INTO users (created_at, id, email, name, gender, status)
VALUES 
('2025-11-12', 1, 'KrishYT@gmail.com', 'Krishna', 'Male', DEFAULT),
('2025-04-03', 2, 'YashYT@gmail.com', 'YashYT', 'Male', DEFAULT);