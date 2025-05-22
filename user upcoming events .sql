SELECT e.event_name, e.event_date, e.city
FROM events e
JOIN registrations r ON e.event_id = r.event_id
WHERE r.user_id = ? AND e.event_date > NOW() AND e.city = r.city
ORDER BY e.event_date;
