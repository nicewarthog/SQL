-- 13. Написати запит, який видаляє книгу з найдовшою назвою

DELETE FROM books
WHERE LENGTH(book_name) = (SELECT * FROM
      (SELECT MAX(LENGTH(book_name)) FROM books)Tmp_table)