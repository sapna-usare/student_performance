# 🎓 Student Performance Management System (Oracle SQL + PL/SQL)

## 📖 Project Overview
This project demonstrates how to design and manage a simple **Student Performance Database** using **Oracle SQL and PL/SQL**.  

It includes:
- Creating database tables and relationships  
- Inserting and managing sample data  
- Running analytical SQL queries  
- Writing a PL/SQL procedure for calculating student grades  

This project is ideal for beginners who are learning **Oracle SQL** and **PL/SQL** and want to build a **portfolio project** for roles such as:
- Database Administrator (DBA)
- SQL Developer
- Data Analyst

---

## 🧱 Database Design

### 🗂️ Tables

| Table Name | Description |
|-------------|-------------|
| `STUDENT` | Stores basic student details |
| `COURSE` | Stores course information |
| `MARKS` | Stores marks obtained by each student in each course |

### 🔗 Relationships
- Each **student** can enroll in multiple **courses**.  
- Each **course** can be taken by multiple **students**.  
- The `MARKS` table forms a **many-to-many relationship** between `STUDENT` and `COURSE`.

---

## 🧩 Folder Structure

```

student_performance_project/
│
├── create_tables.sql       # Script to create all tables
├── insert_data.sql         # Script to insert sample data
├── queries.sql             # Analytical SQL queries
├── procedures.sql          # PL/SQL procedure to calculate grades
└── README.md               # Project documentation

````

---

## ⚙️ Step-by-Step Setup Guide

Follow these instructions carefully to set up and run the project on your system.

---

### 🧰 1. Install Required Tools

| Tool | Purpose | Download Link |
|------|----------|---------------|
| **Oracle Database XE (21c or later)** | To run SQL & PL/SQL | [https://www.oracle.com/database/technologies/appdev/xe.html](https://www.oracle.com/database/technologies/appdev/xe.html) |
| **Oracle SQL Developer** | To run SQL scripts easily | [https://www.oracle.com/tools/downloads/sqldev-downloads.html](https://www.oracle.com/tools/downloads/sqldev-downloads.html) |
| **Git** | To manage and upload the project | [https://git-scm.com/downloads](https://git-scm.com/downloads) |

---

### 🗄️ 2. Create the Database Schema

1. Open **Oracle SQL Developer**  
2. Connect to your **local database** using your credentials  
   Example:  
   - Username: `system`  
   - Password: (your Oracle password)  
   - Hostname: `localhost`  
   - Port: `1521`  
   - SID: `xe`

3. Run the `create_tables.sql` file:  
   ```sql
   @C:\path\to\create_tables.sql

This will create the tables: `STUDENT`, `COURSE`, and `MARKS`.

---

### 📥 3. Insert Sample Data

Run the `insert_data.sql` file:

```sql
@C:\path\to\insert_data.sql
```

This script will insert sample students, courses, and marks into your tables.

You can verify data by running:

```sql
SELECT * FROM STUDENT;
SELECT * FROM COURSE;
SELECT * FROM MARKS;
```

---

### 🔍 4. Run SQL Queries

Now, execute the queries from `queries.sql` to explore and analyze the data.

Example:

```sql
-- Average marks of each student
SELECT s.STUDENT_NAME, ROUND(AVG(m.MARKS_OBTAINED),2) AS AVG_MARKS
FROM STUDENT s
JOIN MARKS m ON s.STUDENT_ID = m.STUDENT_ID
GROUP BY s.STUDENT_NAME;
```

Other included queries:

* Top performing student
* Department-wise average
* Course performance comparison

---

### ⚙️ 5. Execute the PL/SQL Procedure

1. Open the `procedures.sql` file in Oracle SQL Developer.
2. Run the script to create the stored procedure:

   ```sql
   @C:\path\to\procedures.sql
   ```
3. Enable output:

   ```sql
   SET SERVEROUTPUT ON;
   ```
4. Execute the procedure for a student:

   ```sql
   EXEC CALCULATE_GRADE(101);
   ```

✅ Example Output:

```
Student ID: 101 -> Grade: A
```

---

### 🧠 6. Run Analytical Queries (For Data Analyst Practice)

Try these extra queries to strengthen your data analysis skills:

```sql
-- Department-wise average performance
SELECT DEPT, ROUND(AVG(MARKS_OBTAINED),2) AS AVG_SCORE
FROM STUDENT s
JOIN MARKS m ON s.STUDENT_ID = m.STUDENT_ID
GROUP BY DEPT;

-- Course performance ranking
SELECT c.COURSE_NAME, ROUND(AVG(m.MARKS_OBTAINED),2) AS AVG_MARKS
FROM COURSE c
JOIN MARKS m ON c.COURSE_ID = m.COURSE_ID
GROUP BY c.COURSE_NAME
ORDER BY AVG_MARKS DESC;
```

---

## 📊 Sample Output

| Student | Department | Average Marks | Grade |
| ------- | ---------- | ------------- | ----- |
| Asha    | CS         | 87.7          | A     |
| Ravi    | IT         | 68.3          | C     |
| Sneha   | CS         | 91.6          | A     |
| Kiran   | IT         | 67.6          | C     |

---

## 💾 How to Push to GitHub

Once your project runs successfully, upload it to GitHub.

1. **Create a new folder** on your computer:

   ```
   student_performance_project/
   ```
2. **Save** all `.sql` files and this `README.md` inside it.
3. Open **Git Bash** inside that folder and run:

   ```bash
   git init
   git add .
   git commit -m "Initial Oracle SQL + PL/SQL project"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/student_performance_project.git
   git push -u origin main
   ```
4. Go to [https://github.com](https://github.com) → your repository → confirm the upload.

---

## 🧰 Tools & Technologies Used

* **Oracle SQL / PL/SQL**
* **Oracle Database XE 21c**
* **Oracle SQL Developer**
* **Git & GitHub**

---

## 📚 Learning Outcomes

After completing this project, you will have learned:

* How to create and relate tables in Oracle SQL
* How to perform JOIN, GROUP BY, and aggregate queries
* How to write and execute PL/SQL procedures
* How to organize and publish SQL projects on GitHub

---

## 👩‍💻 Author

**Sapna Nanglot**
📍 Aspiring Database Administrator | Oracle SQL & PL/SQL Learner
📧 *Add your email here (optional)*
🔗 *LinkedIn: [Your LinkedIn Profile](https://linkedin.com)*
🗓️ *Created on:* October 2025