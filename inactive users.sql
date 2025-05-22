SELECT u.user_id, u.name
FROM users u
LEFT JOIN registrations r ON u.user_id = r.user_id
WHERE r.registration_date < NOW() - INTERVAL 90 DAY OR r.registration_date IS NULL;
