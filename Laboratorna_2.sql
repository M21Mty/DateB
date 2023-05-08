SELECT name FROM cities WHERE population >= 1000000;/*Task 1 Отримати список міст-мільйонерів України */
SELECT name FROM cities WHERE region = "W" OR region = "E" ORDER BY population DESC;/*
Task 2 Отримати список міст з регіону E та W відсортований за кількістю населення*/
SELECT name FROM cities WHERE population > 50000 AND region IN ("S","C", "N");/* Task 3 Отримати список міст 
з населенням більше ніж 50000 з регіонів S, C та N (вікористовуючи оператор IN)*/
SELECT name FROM cities WHERE region IN ("E","W", "N") AND population BETWEEN 150000 AND 350000 ORDER BY name LIMIT 20;
/*Task 4 Отримати перші 20 міст 
(за назвою) у яких населення більше ніж 
150000 але не більше ніж 350000 та які знаходяться в регіонах E,W,N*/

SELECT name FROM cities WHERE region NOT IN ("E", "W") ORDER BY population DESC LIMIT 10 offset 9; /*
Task 5 Отримати другу десятку міст за кількістю населення які не входять до регіонів E та W
*/