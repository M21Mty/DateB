SELECT population, region FROM cities GROUP BY region;/*Task 1*/

SELECT region, population, COUNT(*) AS city_quantity FROM cities GROUP BY region HAVING COUNT(*) >= 10; /*Task 2*/

SELECT name, population
FROM cities
GROUP BY region
HAVING COUNT(*) >= 5
ORDER BY population DESC
LIMIT 5 offset 3; /*Task 3*/


SELECT region, population
FROM cities
WHERE population > 300000
GROUP BY region
ORDER BY population DESC; /*Task 4*/


SELECT 
    name, population
FROM
    cities
WHERE
population < 150000 OR population > 500000 AND
    region IN (SELECT 
            name
        FROM
            regions
        WHERE
            area_quantity < 5); /*Task 5*/
