-- 14. Напишіть запит, щоб дізнатися, чи є книги, написані більш ніж одним автором (за ідентифікатором)

SELECT book_name, count(author_id)
FROM books
GROUP BY book_name
HAVING count(author_id) > 1