CREATE DATABASE library;
USE library;

SET NAMES utf8;

START TRANSACTION;
CREATE TABLE `book` (
                             `book_id` BIGINT NOT NULL auto_increment PRIMARY KEY,
                             `name` VARCHAR ( 25 ) NOT NULL,
                             `author` VARCHAR ( 25 ) NOT NULL,
                             `publish` VARCHAR ( 25 ) NOT NULL,
                             `ISBN` VARCHAR ( 15 ) NOT NULL,
                             `introduction` text,
                             `language` VARCHAR ( 4 ) NOT NULL,
                             `price` DECIMAL ( 10, 2 ) NOT NULL,
                             `pub_date` date NOT NULL,
                             `class_id` INT DEFAULT NULL,
                             `number` INT DEFAULT NULL
)  DEFAULT CHARSET = utf8;

INSERT INTO `book` (`book_id`, `name`, `author`, `publish`, `ISBN`, `introduction`, `language`, `price`, `pub_date`, `class_id`, `number`) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '978-0743273565', 'A novel about the Jazz Age in New York.', 'en', 10.99, '1925-04-10', 101, 1),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', '978-0446310784', 'A classic novel dealing with racial injustice.', 'en', 9.99, '1960-07-11', 102, 2),
(3, '1984', 'George Orwell', 'Secker & Warburg', '978-0451524935', 'A dystopian novel about totalitarianism.', 'en', 8.99, '1949-06-08', 103, 1),
(4, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '978-0141439518', 'A romantic novel about early 19th-century English society.', 'en', 7.99, '1813-01-28', 104, 2),
(5, 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', '978-0486275592', 'A novel about the adventures of a whaling ship.', 'en', 6.99, '1851-10-18', 105, 3),
(6, 'War and Peace', 'Leo Tolstoy', 'The Russian Messenger', '978-0670034690', 'A novel about Napoleon''s invasion of Russia.', 'ru', 12.99, '1869-01-01', 106, 5),
(7, 'Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', '978-0142437964', 'A novel about a man who becomes a knight-errant.', 'es', 11.99, '1605-01-01', 107, 1),
(8, 'The Odyssey', 'Homer', 'Unknown', '978-0140268867', 'An epic poem about the journey of Odysseus.', 'gr', 10.99, '1800-01-01', 108, 8),
(9, 'Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', '978-0486415871', 'A novel about the mental anguish of a murderer.', 'ru', 9.99, '1866-01-01', 109, 1),
(10, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'The Russian Messenger', '978-0140449160', 'A novel about the moral dilemmas of four brothers.', 'ru', 8.99, '1880-01-01', 110, 1),
(11, 'Jane Eyre', 'Charlotte Brontë', 'Smith, Elder & Co.', '978-0142437964', 'A novel about the life of Jane Eyre.', 'en', 7.99, '1847-10-16', 101, 2),
(12, 'Wuthering Heights', 'Emily Brontë', 'Thomas Cautley Newby', '978-0141439556', 'A novel about the passionate love story on the Yorkshire moors.', 'en', 6.99, '1847-12-01', 104, 8),
(13, 'Great Expectations', 'Charles Dickens', 'Chapman & Hall', '978-0142437964', 'A novel about the personal growth of an orphan named Pip.', 'en', 12.99, '1861-10-01', 105, 4),
(14, 'Oliver Twist', 'Charles Dickens', 'Richard Bentley', '978-0142437964', 'A novel about the life of an orphan boy in London.', 'en', 11.99, '1838-02-01', 105, 6);

CREATE TABLE `class` ( `class_id` INT NOT NULL PRIMARY KEY,
                            `class_name` VARCHAR ( 15 ) NOT NULL ) ENGINE = INNODB DEFAULT CHARSET = utf8;
INSERT INTO `class` (`class_id`, `class_name`) VALUES
                                                        (101, 'Classic'),
                                                        (102, 'Mystery'),
                                                        (103, 'Science Fiction'),
                                                        (104, 'Romance'),
                                                        (105, 'Adventure'),
                                                        (106, 'Historical'),
                                                        (107, 'Fantasy'),
                                                        (108, 'Poetry'),
                                                        (109, 'Philosophy'),
                                                        (110, 'Biography');

CREATE TABLE `borrow` (
                             `borrow_id` int NOT NULL auto_increment PRIMARY KEY,
                             `book_id` int NOT NULL,
                             `reader_id` int NOT NULL,
                             `borrow_date` date NOT NULL,
                             `due_date` date DEFAULT borrow_date + INTERVAL 1 MONTH,
                             `return_date` date DEFAULT NULL
)  DEFAULT CHARSET = utf8;

INSERT INTO `borrow` (`borrow_id`, `book_id`, `reader_id`, `borrow_date`, `due_date`, `return_date`)
VALUES
(1, 7, 4, '2024-06-05', '2024-06-12', '2024-06-10'),
(2, 3, 2, '2024-06-03', '2024-06-10', '2024-06-08'),
(3, 12, 1, '2024-06-01', '2024-06-08', '2024-06-05'),
(4, 5, 3, '2024-06-04', '2024-06-11', NULL),
(5, 9, 5, '2024-06-02', '2024-06-09', '2024-06-07'),
(6, 2, 4, '2024-06-05', '2024-06-12', NULL);

CREATE TABLE `reservation` (
                               `reservation_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                               `student_id` INT NOT NULL,
                               `book_id` INT NOT NULL,
                               `reservation_date` DATE NOT NULL,
                               `status` INT NOT NULL
)  DEFAULT CHARSET = utf8;
INSERT INTO `reservation` (`student_id`, `book_id`, `reservation_date`, `status`) VALUES
(1, 4, '2024-06-05', 1),
(2, 8, '2024-06-04', 1),
(3, 12, '2024-06-03', 1),
(4, 6, '2024-06-02', 1),
(5, 7, '2024-06-01', 1);


CREATE TABLE `admin` ( `admin_id` BIGINT NOT NULL PRIMARY KEY,
                       `password` VARCHAR ( 15 ) NOT NULL,
                       `username` VARCHAR ( 15 ) DEFAULT NULL,
                       `name` VARCHAR ( 15) DEFAULT  NULL)DEFAULT CHARSET = utf8;
INSERT INTO `admin`
VALUES
    ( 123, '123', 'admin' , 'PB21020572');

CREATE TABLE `reader` (
                               `reader_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                               `name` VARCHAR ( 20 ) default 'X',
                               `sex` VARCHAR ( 1 ) default  'M',
                               `birth` date NOT NULL,
                               `address` VARCHAR ( 50 ) NOT NULL,
                               `phone` VARCHAR ( 15 ) NOT NULL,
                               `username` VARCHAR (15) DEFAULT CONCAT('reader_', reader_id),
                                `password` VARCHAR (15) DEFAULT '123456'
) ENGINE = INNODB DEFAULT CHARSET = utf8;

INSERT INTO `reader` (name, sex, birth, address, phone,username,password) VALUES
('John Doe', 'M', '1985-04-12', '123 Elm Street, New York', '555-1234' ,'11111', '123456' ),
('Jane Smith', 'F', '1991-07-25', '456 Oak Street, Los Angeles', '555-2345','11112', '123456'),
('Michael Brown', 'M', '1980-09-15', '789 Pine Street, Chicago', '555-3456','11113','123456'),
('Emily Davis', 'F', '1993-01-30', '101 Birch Street, Houston', '555-4567','11114', '123456'),
('William Miller', 'M', '1987-12-08', '202 Maple Street, Philadelphia', '555-5678','11115', '123456'),
('Olivia Wilson', 'F', '1995-06-18', '303 Cedar Street, San Francisco', '555-6789','11116', '123456');


CREATE TABLE `overdue` (
                           `overdue_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                           `student_id` INT NOT NULL,
                           `borrow_id` INT NOT NULL,
                           `due_date` DATE NOT NULL,
                           `return_date` DATE NOT NULL,
                           `overdue_days` INT NOT NULL,
                           `fine_amount` DECIMAL(10, 2) NOT NULL
)DEFAULT CHARSET = utf8;

COMMIT;