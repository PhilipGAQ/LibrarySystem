update book set book.number=1 where book_id=1;
update borrow set borrow_date='2024-5-9' where borrow_id=15;
update borrow set due_date='2024-6-1' where borrow_id=15;
delete from reader where reader_id=7