-- 6. Написати запит, який вибирає кількість книг у заданого автора (за ідентифікатором)

SELECT count(book_name)
FROM books
WHERE author_id = 1