DELIMITER $$

CREATE TRIGGER after_salary_update
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.salary <> NEW.salary THEN
        INSERT INTO salary_log (user_id, old_salary, new_salary)
        VALUES (OLD.id, OLD.salary, NEW.salary);
    END IF;
END$$

DELIMITER ;
INSERT INTO users (name, salary) VALUES ('Krishna', -5000);
UPDATE users SET salary = 60000 WHERE id = 1;
SHOW TRIGGERS;
