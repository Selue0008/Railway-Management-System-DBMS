## 📁 **Phase4_Final_Project/Final_Report.md**

```markdown
# 🏁 Phase 4 — Final Project & Presentation
**Experiment:** 3.4  
**Outcomes:**  
- CO2: Understand DBMS principles  
- CO3: Utilize SQL queries  
- CO5: Apply logical design and normalization  

---

## 🎯 Objective
Implement SQL **Views** for analytical reporting and simplify data retrieval in the Railway Management System.

---

## 🧱 Views Implemented

### 1. Passenger Booking View
```sql
CREATE VIEW PassengerBookingView AS  
SELECT p.Passenger_ID, p.Name AS Passenger_Name, t.Train_Name, b.Seat_No, b.Fare, b.Status  
FROM Passengers p  
INNER JOIN Bookings b ON p.Passenger_ID = b.Passenger_ID  
INNER JOIN Trains t ON b.Train_ID = t.Train_ID;
