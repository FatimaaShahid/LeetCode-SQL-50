SELECT 
    ROUND(COUNT(DISTINCT p1.player_id) * 1.0 / COUNT(DISTINCT p2.player_id), 2) AS fraction
FROM
    (SELECT player_id, MIN(event_date) AS first_login
     FROM Activity
     GROUP BY player_id) p2
LEFT JOIN Activity p1
    ON p1.player_id = p2.player_id
    AND p1.event_date = DATE_ADD(p2.first_login, INTERVAL 1 DAY);
