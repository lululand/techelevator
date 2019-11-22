SELECT * FROM reservation 
INNER JOIN site
ON reservation.site_id = site.site_id
INNER JOIN campground
ON site.campground_id = campground.campground_id
WHERE site.campground_id = 1
AND from_date > '2019-06-11'
AND to_date < '2019-11-15';

SELECT * FROM reservation WHERE name = 'Jones';

INSERT INTO reservation (reservation_id, site_id, name, from_date, to_date, create_date)
VALUES()

SELECT site.site_id, site.campground_id, site.site_number, "
				+ "site.max_occupancy, site.accessible, site.max_rv_length, site.utilities, c.daily_fee "
				+ "FROM site JOIN reservation r ON r.site_id = site.site_id JOIN campground c "
				+ "ON c.campground_id = site.campground_id "
				+ "WHERE site.site_id NOT IN "
				+ "(SELECT site.site_id FROM campground INNER JOIN site ON site.campground_id = campground.campground_id "
				+ "INNER JOIN reservation ON reservation.site_id = site.site_id  WHERE reservation.from_date <= ? "
				+ "AND reservation.to_date >= ? AND site.campground_id = ?) "
				+ "GROUP BY site.site_id, site.campground_id, c.daily_fee LIMIT 5
				
				
SELECT * FROM site
INNER JOIN campground c
ON c.campground_id = site.campground_id
INNER JOIN reservation r ON
r.site_id = site.site_id
WHERE site.site_id = 1
AND from_date = '09-20-2019'
AND to_date = '10-20-2019';


SELECT site.site_id, site.campground_id, site.site_number, 
site.max_occupancy, site.accessible, site.max_rv_length, site.utilities, c.daily_fee 
FROM site JOIN reservation r ON r.site_id = site.site_id JOIN campground c 
ON c.campground_id = site.campground_id 
WHERE site.site_id NOT IN 
(SELECT site.site_id FROM campground INNER JOIN site ON site.campground_id = campground.campground_id 
INNER JOIN reservation ON reservation.site_id = site.site_id  WHERE reservation.from_date <= '10-11-2019' 
AND reservation.to_date >= '10-20-2019' AND site.campground_id = 1) 
GROUP BY site.site_id, site.campground_id, c.daily_fee LIMIT 5;


SELECT * FROM reservation;







