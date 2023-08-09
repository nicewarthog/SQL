-- 1. Знайти кількість книг, написаних кожним автором
SELECT author_firstname, author_lastname, count(book_name)
FROM books JOIN authors on books.author_id = authors.id
GROUP BY author_id
ORDER BY count(book_name) DESC

-- 2. Знайти назву книги з максимальною кількістю сторінок
SELECT book_name, pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books)

-- 3. Знайти середній рік видання книг автора з певним ідентифікатором
SELECT avg(book_year)
FROM books
WHERE author_id = 16

-- 4. Знайти авторів, які мають понад 5 книг
SELECT author_firstname, author_lastname, count(book_name)
FROM books JOIN authors ON books.author_id = authors.id
GROUP BY author_id
HAVING count(author_id) > 5

-- 5. Знайти авторів, у яких всі книги видані після певного року
SELECT author_firstname, author_lastname, MIN(book_year)
FROM books JOIN authors ON books.author_id = authors.id
GROUP BY author_id
HAVING MIN(book_year) > 1950

-- 6. Знайти автора з найбільшою кількістю сторінок написаних книг
SELECT author_firstname, author_lastname, sum(pages)
FROM books JOIN authors ON books.author_id = authors.id
GROUP BY author_id
ORDER BY sum(pages) DESC
LIMIT 1

-- 7. Знайти автора, у якого найбільше книг видано в останні 10 років

-- 8. Знайти середню кількість сторінок у книгах авторів з понад двома книгами
SELECT author_firstname, author_lastname, AVG(pages), count(author_id)
FROM books JOIN authors ON books.author_id = authors.id
GROUP BY author_id
HAVING count(author_id) > 1
ORDER BY count(author_id)