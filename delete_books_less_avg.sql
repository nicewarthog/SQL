-- 9. Написати запит, який видаляє усі книги, у яких кількість сторінок менша, ніж середня кількість сторінок

DELETE FROM books
WHERE pages < (SELECT * FROM
      (SELECT AVG(pages) from books)Tmp_table)