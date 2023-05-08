# SET NAMES utf8;
# SET time_zone = '+00:00';

SELECT name FROM cities ORDER BY population DESC LIMIT 10 offset 9; /* Task 1 Запит на отримання 
другої десятки міст України за кількістю населення*/

SELECT name FROM cities ORDER BY name DESC LIMIT 30; /* Task 2 Отримати список міст 
відсортованим за назвою в зворотньому порядку (від Я до А).
 Обмежити запит 30 запасами.*/

SELECT name FROM cities ORDER BY region, population DESC;/* Task 3 Отримати список міст 
відсортованих за регіоном та кількістю населення 
(спочатку найнаселеніші міста регіону).*/

SELECT DISTINCT region FROM cities;/* Task 4 Отримати список регіонів вказаних в таблиці.*/

SELECT name FROM cities ORDER BY region DESC, name DESC; /*Task 5 Отримати список міст відсортованих за регіоном
 у зворотньому порядку та за назвою
  у межах регіону також у зворотньому порядку */

SELECT name, region, population
FROM cities WHERE region NOT IN ("E", "W") ORDER BY population DESC LIMIT 10 offset 9;

/*Task 5 Отримати другу десятку міст за кількістю населення які не входять до регіонів E та W*/