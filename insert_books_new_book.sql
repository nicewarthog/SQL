-- 10. Написати запит, який додає нову книгу, але якщо книга цього автора з такою назвою вже існує, оновлює кількість сторінок

INSERT INTO books (id, book_name, book_year, pages, author_id) VALUES (50, 'Кобзар', 1840, 100, 1)
ON DUPLICATE KEY UPDATE pages = 100