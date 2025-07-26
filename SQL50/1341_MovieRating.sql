(
  SELECT a.name AS results
  FROM Users a
  JOIN MovieRating b ON a.user_id = b.user_id
  GROUP BY a.user_id, a.name
  ORDER BY COUNT(*) DESC, a.name
  LIMIT 1
)

UNION ALL

(
  SELECT m.title AS results
  FROM Movies m
  JOIN MovieRating r ON m.movie_id = r.movie_id
  WHERE r.created_at >= '2020-02-01'
    AND r.created_at < '2020-03-01'
  GROUP BY m.movie_id, m.title
  ORDER BY AVG(r.rating) DESC, m.title ASC
  LIMIT 1
);
