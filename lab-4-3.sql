-- Who hit the most home runs in 2019, and what team did they play for?

SELECT teams.name, players.first_name, players.last_name, MAX(home_runs) FROM players
INNER JOIN stats ON players.id = stats.player_id
INNER JOIN teams ON teams.id =stats.team_id
WHERE year = 2019;

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


