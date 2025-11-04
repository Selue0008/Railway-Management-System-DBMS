CREATE DATABASE RailwayDB;
USE RailwayDB;

-- Passengers Table
CREATE TABLE Passengers (
  Passenger_ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Gender VARCHAR(10),
  Age INT,
  Contact_No VARCHAR(15),
  Email VARCHAR(50)
);

-- Trains Table
CREATE TABLE Trains (
  Train_ID INT PRIMARY KEY,
  Train_Name VARCHAR(50),
  Source VARCHAR(50),
  Destination VARCHAR(50),
  Departure_Time TIME,
  Arrival_Time TIME
);

-- Routes Table
CREATE TABLE Routes (
  Route_ID INT PRIMARY KEY,
  Train_ID INT,
  Stop_Name VARCHAR(50),
  Arrival_Time TIME,
  Departure_Time TIME,
  FOREIGN KEY (Train_ID) REFERENCES Trains(Train_ID)
);

-- Bookings Table
CREATE TABLE Bookings (
  Booking_ID INT PRIMARY KEY,
  Passenger_ID INT,
  Train_ID INT,
  Booking_Date DATE,
  Seat_No VARCHAR(10),
  Fare DECIMAL(10,2),
  Status VARCHAR(15),
  FOREIGN KEY (Passenger_ID) REFERENCES Passengers(Passenger_ID),
  FOREIGN KEY (Train_ID) REFERENCES Trains(Train_ID)
);
