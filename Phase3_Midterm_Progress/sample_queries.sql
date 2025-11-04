-- 1. Retrieve all bookings with passenger names and train details
SELECT p.Name AS Passenger_Name, t.Train_Name, b.Seat_No, b.Fare, b.Status  
FROM Passengers p  
INNER JOIN Bookings b ON p.Passenger_ID = b.Passenger_ID  
INNER JOIN Trains t ON b.Train_ID = t.Train_ID;

-- 2. Retrieve passengers who have spent more than the average fare
SELECT Name  
FROM Passengers  
WHERE Passenger_ID IN (  
    SELECT Passenger_ID  
    FROM Bookings  
    GROUP BY Passenger_ID  
    HAVING SUM(Fare) > (SELECT AVG(Fare) FROM Bookings)
);

-- 3. Find top trains by total revenue
SELECT t.Train_Name, SUM(b.Fare) AS Total_Revenue  
FROM Trains t  
JOIN Bookings b ON t.Train_ID = b.Train_ID  
GROUP BY t.Train_Name  
ORDER BY Total_Revenue DESC;
