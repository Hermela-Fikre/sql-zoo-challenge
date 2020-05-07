-- 01 --
SELECT SUM(population)
    FROM world

-- 02 --
SELECT DISTINCT continent FROM world

-- 03 --
SELECT SUM(GDP) FROM world WHERE continent = 'Africa'

-- 04 --
SELECT COUNT(*) FROM world WHERE area > 1000000

-- 05 --
SELECT SUM(population) FROM world WHERE name IN ('Estonia', 'Latvia', 'Lithuania')

-- 06 --
SELECT continent, COUNT(name) FROM world
  GROUP BY continent;

--  07 --
SELECT continent, COUNT(*) FROM world
  WHERE population > 10000000
  GROUP BY continent;

-- 08 --
SELECT continent FROM world
  GROUP BY continent
  HAVING SUM(population) > 100000000;