# 🧩 Phase 2 — Conceptual Design
**Course:** CONT_24CAP-204 — DBMS Lab  
**Experiment:** 2.3  
**Outcomes:**  
- CO2: Understand DBMS principles for data storage and retrieval  
- CO3: Utilize SQL to construct queries  

---

## 🎯 Objective
Design a relational database that manages railway operations — including passengers, trains, bookings, and routes — with normalized relationships and optimized retrieval.

---

## 🧱 Entities and Attributes

### **Passengers**
| Attribute | Type | Key |
|------------|------|-----|
| Passenger_ID | INT | Primary Key |
| Name | VARCHAR(50) |  |
| Gender | VARCHAR(10) |  |
| Age | INT |  |
| Contact_No | VARCHAR(15) |  |
| Email | VARCHAR(50) |  |

### **Trains**
| Attribute | Type | Key |
|------------|------|-----|
| Train_ID | INT | Primary Key |
| Train_Name | VARCHAR(50) |  |
| Source | VARCHAR(50) |  |
| Destination | VARCHAR(50) |  |
| Departure_Time | TIME |  |
| Arrival_Time | TIME |  |

### **Routes**
| Attribute | Type | Key |
|------------|------|-----|
| Route_ID | INT | Primary Key |
| Train_ID | INT | Foreign Key |
| Stop_Name | VARCHAR(50) |  |
| Arrival_Time | TIME |  |
| Departure_Time | TIME |  |

### **Bookings**
| Attribute | Type | Key |
|------------|------|-----|
| Booking_ID | INT | Primary Key |
| Passenger_ID | INT | Foreign Key |
| Train_ID | INT | Foreign Key |
| Booking_Date | DATE |  |
| Seat_No | VARCHAR(10) |  |
| Fare | DECIMAL(10,2) |  |
| Status | VARCHAR(15) |  |

---

## 🔗 Relationships
- Passengers ⇄ Bookings (1-to-Many via Passenger_ID)  
- Trains ⇄ Bookings (1-to-Many via Train_ID)  
- Trains ⇄ Routes (1-to-Many via Train_ID)

---

## 🧠 Example Queries

### **JOIN Example**
```sql
SELECT p.Name AS Passenger_Name, t.Train_Name, b.Seat_No, b.Fare, b.Status  
FROM Passengers p  
INNER JOIN Bookings b ON p.Passenger_ID = b.Passenger_ID  
INNER JOIN Trains t ON b.Train_ID = t.Train_ID;
