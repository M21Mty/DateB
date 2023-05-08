SELECT name FROM cities WHERE name LIKE '%ськ'; 
/* Task 1 Отримати список міст України які закінчуються на ‘ськ’*/
SELECT name FROM cities WHERE name LIKE '%донец%'; /* Task 2 Отримати список міст України 
у назві яких є  ‘донец’*/

SELECT CONCAT(name, " ", region) FROM cities WHERE population >100000 ORDER BY name; /*
TASK 3 Отримати список міст з населенням більше ніж 100 000 з назвою 
у вигляді НАЗВА_МІСТА (РЕГІОН). Результат відсортувати за алфавітом*/

SELECT name, population/40000000*100 AS percentase FROM cities LIMIT 50; /*
*/

SELECT name, CONCAT (population/40000000*100) AS percentase
FROM cities
WHERE population/40000000*100 >0.1;


