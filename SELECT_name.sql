-- 01 --
SELECT  name, continent, population FROM world

-- 02 --
SELECT name FROM world
    WHERE population > 200000000

-- 03 -- 
SELECT name, GDP/population FROM world WHERE population >200000000

-- 04 --
SELECT name, population/1000000 FROM world WHERE continent = 'South America'

-- 05 --
SELECT name, population FROM world WHERE name IN( 'France', 'Germany', 'Italy')

-- 06
SELECT name FROM world WHERE name LIKE '%United%'

-- 07
SELECT name, population, area FROM world WHERE area > 3000000 OR population > 250000000

-- 08
SELECT name, population, area
FROM world
WHERE (area > 3000000 AND population < 250000000)
  OR (area < 3000000 and population > 250000000)

-- 09
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000, 2)
FROM world
WHERE continent = 'South America'

-- 10
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp > 1000000000000

-- 11
SELECT name, continent,
       CASE WHEN continent='Caribbean' THEN 'North America'
            ELSE continent END
FROM world
WHERE name LIKE 'J%'

-- 12
SELECT name,
CASE WHEN continent = 'Europe' OR continent = 'Asia' THEN 'Eurasia'
      WHEN continent LIKE '%america%' OR continent = 'Caribbean' THEN 'America'
      ELSE continent END
FROM world
WHERE name LIKE 'a%' or name LIKE 'b%'

-- 13
SELECT name
   FROM world
WHERE name LIKE 'B%'
  AND name NOT LIKE '%a%'

