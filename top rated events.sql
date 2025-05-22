SELECT e.event_name, AVG(f.rating) AS avg_rating
FROM events e
JOIN feedback f ON e.event_id = f.event_id
GROUP BY e.event_id
HAVING COUNT(f.feedback_id) >= 10
ORDER BY avg_rating DESC;
