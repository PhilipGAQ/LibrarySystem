delimiter //
create trigger trg_check_overdue
    after update on borrow
FOR EACH ROW
    begin
        declare overdue_days int default 0;
        declare fine_amount decimal(10,2) default 0.00;

        if new.return_date is not null and new.return_date > new.due_date THEN
            SET overdue_days = DATEDIFF(NEW.return_date, NEW.due_date);
            SET fine_amount = overdue_days *1.00;

            INSERT INTO overdue (student_id, borrow_id, due_date, return_date, overdue_days, fine_amount)
            VALUES (NEW.reader_id, NEW.borrow_id, NEW.due_date, NEW.return_date, overdue_days, fine_amount);
        end if ;
    end//

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



INSERT INTO `overdue` (`student_id`, `borrow_id`, `due_date`, `return_date`, `overdue_days`, `fine_amount`)
VALUES
    (4, 1, '2024-06-12', '2024-06-10', 0, 0.00),
    (2, 2, '2024-06-10', '2024-06-08', 0, 0.00),
    (1, 3, '2024-06-08', '2024-06-05', 3, 3.00),
    (5, 5, '2024-06-09', '2024-06-07', 0, 0.00);

INSERT INTO `borrow` (`borrow_id`, `book_id`, `reader_id`, `borrow_date`, `due_date`, `return_date`)
VALUES
    (NULL, 5, 5, '2024-06-05', NULL, NULL);

INSERT INTO `reader` (name, sex, birth, address, phone,username,password) VALUES
('NEW', 'M', '1985-04-12', '123 Elm Street, New York', '555-1234' ,NULL, '123456' );
select * from reader;
update borrow set return_date='2024-07-07' where reader_id=4 and book_id=2;

select * from overdue;
select * from borrow;