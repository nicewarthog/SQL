-- 1. Отримання списку книг з іменами та прізвищами авторів
SELECT book_name, author_firstname, author_lastname
FROM books JOIN authors on books.author_id = authors.id

-- 2. Отримання списку книг, опублікованих після 2010 року, з іменами та прізвищами авторів
SELECT book_name, author_firstname, author_lastname, book_year
FROM books JOIN authors on books.author_id = authors.id
WHERE book_year > 2010

-- 3. Отримання списку книг з ім'ям та прізвищем автора, де кількість сторінок у книзі більше 300
SELECT book_name, author_firstname, author_lastname, pages
FROM books JOIN authors on books.author_id = authors.id
WHERE pages > 300

-- 4. Отримання списку книг, опублікованих автором із певним ім'ям
SELECT book_name, author_firstname, author_lastname
FROM books JOIN authors on books.author_id = authors.id
WHERE author_firstname = 'Stephen' AND author_lastname = 'King'

-- 5. Отримання середньої кількості сторінок у книгах для кожного автора
SELECT author_firstname, author_lastname, AVG(pages)
FROM books JOIN authors on books.author_id = authors.id
GROUP BY author_lastname, author_firstname

-- 6. Отримання списку книг, які були опубліковані у 21 столітті (з 2000 року до теперішнього часу)
SELECT book_name, author_firstname, author_lastname, book_year
FROM books JOIN authors on books.author_id = authors.id
WHERE book_year >= 2000

-- 7. Отримання списку авторів та кількості їх книг, відсортованих за кількістю книг за спаданням
SELECT author_firstname, author_lastname, COUNT(author_id)
FROM books JOIN authors on books.author_id = authors.id
GROUP BY author_lastname, author_firstname
ORDER BY COUNT(author_id) DESC

-- 8. Отримання списку книг, які не мають автора (автора з порожніми даними)
SELECT book_name, author_firstname, author_lastname
FROM books JOIN authors on books.author_id = authors.id
WHERE author_firstname is null AND author_lastname is null