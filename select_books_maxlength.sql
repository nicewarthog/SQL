-- 8. Написати запит, який вибирає книгу з найдовшою назвою

SELECT *
FROM books
WHERE LENGTH(book_name) = (SELECT MAX(LENGTH(book_name)) FROM books)