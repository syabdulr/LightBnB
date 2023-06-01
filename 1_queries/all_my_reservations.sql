SELECT reservations.id, title, start_date, cost_per_night, AVG(property_reviews.rating) AS average_rating 
FROM reservations 
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE guest_id = 1
GROUP BY reservations.id, title, start_date, cost_per_night
ORDER BY start_date
LIMIT 10;