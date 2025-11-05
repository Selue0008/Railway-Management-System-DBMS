-- 1. Customer Booking View
CREATE VIEW PassengerBookingView AS  
SELECT p.Passenger_ID, p.Name AS Passenger_Name, t.Train_Name, b.Seat_No, b.Fare, b.Status  
FROM Passengers p  
INNER JOIN Bookings b ON p.Passenger_ID = b.Passenger_ID  
INNER JOIN Trains t ON b.Train_ID = t.Train_ID;

-- 2. Train Revenue View
CREATE VIEW TrainRevenueView AS  
SELECT t.Train_ID, t.Train_Name, SUM(b.Fare) AS Total_Revenue  
FROM Trains t  
INNER JOIN Bookings b ON t.Train_ID = b.Train_ID  
GROUP BY t.Train_ID, t.Train_Name;

-- 3. Route Schedule View
CREATE VIEW RouteScheduleView AS  
SELECT r.Train_ID, t.Train_Name, r.Stop_Name, r.Arrival_Time, r.Departure_Time  
FROM Routes r  
INNER JOIN Trains t ON r.Train_ID = t.Train_ID;

-- Queries on Views
SELECT * FROM PassengerBookingView WHERE Fare > 2000;
SELECT * FROM TrainRevenueView WHERE Total_Revenue > 10000;
SELECT * FROM RouteScheduleView WHERE Train_Name = 'Rajdhani Express';
