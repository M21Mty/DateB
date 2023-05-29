SELECT UPPER(name) AS name
FROM cities
ORDER BY name
LIMIT 5 OFFSET 5;

SELECT name, CHAR_LENGTH(name) as name_length
FROM cities
WHERE CHAR_LENGTH(name) NOT IN (8, 9, 10)
ORDER BY name;

SELECT SUM(population) AS sum_popul_in_S_C
FROM cities
WHERE region IN('S', 'C');

SELECT AVG(population)
FROM cities
WHERE region = 'W';

SELECT COUNT(name) AS cities_count
FROM cities
WHERE region = 'E';