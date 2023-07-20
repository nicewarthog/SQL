-- 11. Написати запит, який вибирає книги, у яких рік видання між двома вказаними датами

SELECT *
FROM books
WHERE book_year between 1900 and 1999
ORDER BY pages ASC