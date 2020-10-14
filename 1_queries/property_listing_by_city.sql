--avg(end_date - start_date ) as average_duration
SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating 
FROM properties
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE city LIKE '%ancouv%' 
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10; 
