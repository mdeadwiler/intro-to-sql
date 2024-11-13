-- Clue #1: We recently got word that someone fitting Carmen Sandiego's description has been traveling through Southern Europe. She's most likely traveling someplace where she won't be noticed, so find the least populated country in Southern Europe, and we'll start looking for her there.
 
-- Write SQL query here

SELECT name, population
FROM countries
WHERE region = 'Southern Europe'
AND population = (SELECT MIN(population) FROM countries WHERE region = 'Southern Europe');

