-- 12. Написати запит, який оновлює рік видання книги на поточний рік

UPDATE books
SET book_year = YEAR(current_date)
WHERE id = 49