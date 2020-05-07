-- 01 --
SELECT  matchid, player FROM goal WHERE teamid = 'GER'

-- 02 --
SELECT id,stadium,team1,team2
  FROM game WHERE id = 1012

-- 03 --
SELECT player,teamid,stadium,mdate 
  FROM game JOIN goal ON (id=matchid) WHERE teamid = 'GER'

-- 04 --
SELECT team1, team2, player FROM goal
  JOIN game
  ON game.id = goal.matchid
  WHERE player LIKE 'Mario%';