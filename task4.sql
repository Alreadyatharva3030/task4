SELECT COUNT(*) AS total_passengers
FROM Passengers;

SELECT AVG(departure_year) AS avg_departure_year
FROM Flights;

SELECT pilot_id, COUNT(*) AS total_flights
FROM Flights
GROUP BY pilot_id;

SELECT flight_id, COUNT(*) AS total_bookings
FROM Bookings
GROUP BY flight_id;

SELECT passenger_id, COUNT(*) AS total_bookings
FROM Bookings
GROUP BY passenger_id
HAVING COUNT(*) > 1;

SELECT pilot_id, MAX(departure_year) AS latest_year
FROM Flights
GROUP BY pilot_id;

SELECT passenger_id, MIN(booking_date) AS first_booking
FROM Bookings
GROUP BY passenger_id;

SELECT departure_year, COUNT(*) AS total_flights
FROM Flights
GROUP BY departure_year
ORDER BY departure_year ASC;

SELECT pilot_id, COUNT(*) AS total_flights
FROM Flights
GROUP BY pilot_id
HAVING COUNT(*) > 1;

SELECT departure_year, SUM(1) AS total_flights
FROM Flights
GROUP BY departure_year;
