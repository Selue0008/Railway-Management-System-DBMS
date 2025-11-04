## 📁 **Phase3_Midterm_Progress/Midterm_Report.md**

```markdown
# ⚙️ Phase 3 — MidTerm Progress Report
**Experiment:** 3.3  
**Outcomes:**  
- CO2: Understand DBMS storage and retrieval principles  
- CO4: Apply relational database theory and relational algebra  

---

## 🧠 Progress Overview
### 1. Database Schema
Tables Created:
- Passengers  
- Trains  
- Routes  
- Bookings  

Relationships implemented with primary and foreign keys.  
Normalization achieved up to **3NF** to eliminate redundancy.

---

### 2. Queries Executed

**JOIN Query**
```sql
SELECT p.Name AS Passenger_Name, t.Train_Name, b.Seat_No, b.Fare, b.Status  
FROM Passengers p  
INNER JOIN Bookings b ON p.Passenger_ID = b.Passenger_ID  
INNER JOIN Trains t ON b.Train_ID = t.Train_ID;
