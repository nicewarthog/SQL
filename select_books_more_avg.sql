-- 3. Написати запит, який вибирає книги, у яких кількість сторінок більша за середню кількість сторінок по всіх книгах

SELECT book_name, pages
FROM books
WHERE pages > (SELECT AVG(pages) from books)
ORDER BY pages DESC