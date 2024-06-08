DELIMITER //

CREATE TRIGGER trg_check_overdue
    AFTER UPDATE ON borrow
    FOR EACH ROW
BEGIN
    DECLARE overdue_days INT DEFAULT 0;
    DECLARE fine_amount DECIMAL(10,2) DEFAULT 0.00;
    DECLARE book_name VARCHAR(25);

    IF NEW.return_date IS NOT NULL AND NEW.return_date > NEW.due_date THEN
        SET overdue_days = DATEDIFF(NEW.return_date, NEW.due_date);
        SET fine_amount = overdue_days * 1.00;

        -- 获取图书名称
        SELECT name INTO book_name
        FROM book
        WHERE book_id = NEW.book_id;

        -- 插入到overdue表
        INSERT INTO overdue (student_id, borrow_id, due_date, return_date, overdue_days, fine_amount, name)
        VALUES (NEW.reader_id, NEW.borrow_id, NEW.due_date, NEW.return_date, overdue_days, fine_amount, book_name);
    END IF;
END//

DROP TRIGGER if exists set_due_date;

CREATE TRIGGER `set_due_date`
    before INSERT ON `borrow`
    FOR EACH ROW
BEGIN
    IF NEW.due_date IS NULL THEN
        SET NEW.due_date = DATE_ADD(NEW.borrow_date, INTERVAL 1 MONTH);
    END IF;
END//

DELIMITER ;

