# SQL Basic CRUD & Query Guide

## Table of Contents

- [Database Management](#database-management)
  - [Create Database](#create-database)
  - [Use Database](#use-database)
  - [Drop Database](#drop-database)
- [Basic CRUD](#basic-crud)
  - [Insert Record](#insert-record)
  - [Read Record](#read-record)
  - [Update Record](#update-record)
  - [Delete Record](#delete-record)
- [Select with Condition](#select-with-condition)
  - [Operators](#operators)
  - [Order By](#order-by)
  - [Limit](#limit)
  - [Group By](#group-by)
  - [Having](#having)
- [Alter Table](#alter-table)
  - [Add Column](#add-column)
  - [Drop Column](#drop-column)
  - [Modify Column](#modify-column)
  - [Rename Column](#rename-column)

---

## Database Management

### Create Database

สร้างฐานข้อมูลใหม่

```sql
CREATE DATABASE database_name;
```

ตัวอย่าง

```sql
CREATE DATABASE company_db;
```

---

### Use Database

เลือกใช้งานฐานข้อมูล

```sql
USE database_name;
```

ตัวอย่าง

```sql
USE company_db;
```

---

### Drop Database

ลบฐานข้อมูล

```sql
DROP DATABASE database_name;
```

ตัวอย่าง

```sql
DROP DATABASE company_db;
```

> ⚠️ **คำเตือน:** การลบฐานข้อมูลจะลบข้อมูลทั้งหมดและไม่สามารถกู้คืนได้

---

## Basic CRUD

### Insert Record

เพิ่มข้อมูลใหม่ลงในตาราง

```sql
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
```

ตัวอย่าง

```sql
INSERT INTO employees (name, position, salary)
VALUES ('John', 'Developer', 40000);
```

เพิ่มข้อมูลโดยไม่ระบุชื่อคอลัมน์ (ต้องตรงกับโครงสร้างตาราง)

```sql
INSERT INTO employees
VALUES (1, 'John', 'Developer', 40000);
```

---

### Read Record

อ่าน/ดึงข้อมูลจากตาราง

```sql
SELECT column1, column2
FROM table_name;
```

ดึงข้อมูลทั้งหมด

```sql
SELECT * FROM employees;
```

ดึงข้อมูลที่ไม่ซ้ำกัน (DISTINCT)

```sql
SELECT DISTINCT column_name FROM table_name;
```

ตัวอย่าง

```sql
SELECT DISTINCT position FROM employees;
```

---

### Update Record

แก้ไขข้อมูลที่มีอยู่

```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```

ตัวอย่าง

```sql
UPDATE employees
SET salary = 45000
WHERE id = 1;
```

> ⚠️ ถ้าไม่ใส่ `WHERE` จะอัปเดตทุกแถวในตาราง

---

### Delete Record

ลบข้อมูลออกจากตาราง

```sql
DELETE FROM table_name
WHERE condition;
```

ตัวอย่าง

```sql
DELETE FROM employees
WHERE id = 1;
```

ลบข้อมูลทั้งหมด (โครงสร้างตารางยังอยู่)

```sql
DELETE FROM employees;
```

---

## Select with Condition

### Operators

| Operator | ความหมาย            |
| -------- | ------------------- |
| =        | เท่ากับ               |
| != , <>  | ไม่เท่ากับ             |
| >        | มากกว่า              |
| <        | น้อยกว่า              |
| >=       | มากกว่าหรือเท่ากับ      |
| <=       | น้อยกว่าหรือเท่ากับ      |
| BETWEEN  | อยู่ในช่วง             |
| IN       | อยู่ในชุดค่า           |
| LIKE     | ค้นหาด้วย pattern    |
| IS NULL  | ค่าว่าง               |

ตัวอย่าง

```sql
SELECT * FROM employees
WHERE salary >= 30000;
```

```sql
SELECT * FROM employees
WHERE name LIKE 'J%';
```

ใช้ IN (ตรวจสอบค่าในชุด)

```sql
SELECT * FROM employees
WHERE position IN ('Developer', 'Manager', 'Designer');
```

ใช้ BETWEEN (ตรวจสอบค่าในช่วง)

```sql
SELECT * FROM employees
WHERE salary BETWEEN 30000 AND 50000;
```

---

### Order By

เรียงลำดับข้อมูล

```sql
SELECT * FROM employees
ORDER BY salary ASC;
```

เรียงจากมากไปน้อย

```sql
SELECT * FROM employees
ORDER BY salary DESC;
```

---

### Limit

จำกัดจำนวนแถวที่แสดงผล

```sql
SELECT * FROM employees
LIMIT 5;
```

เริ่มจากแถวที่กำหนด (OFFSET)

```sql
SELECT * FROM employees
LIMIT 5 OFFSET 10;
```

---

### Group By

จัดกลุ่มข้อมูล (ใช้กับ aggregate function)

```sql
SELECT position, COUNT(*) AS total
FROM employees
GROUP BY position;
```

Aggregate functions ที่ใช้บ่อย

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

---

### Having

ใช้กรองข้อมูลหลังจาก `GROUP BY`

```sql
SELECT position, AVG(salary) AS avg_salary
FROM employees
GROUP BY position
HAVING AVG(salary) > 40000;
```

---

## Alter Table

### Add Column

เพิ่มคอลัมน์ใหม่

```sql
ALTER TABLE employees
ADD age INT;
```

เพิ่มคอลัมน์พร้อมกำหนดตำแหน่ง

```sql
ALTER TABLE employees
ADD age INT AFTER name;
```

---

### Drop Column

ลบคอลัมน์ออก

```sql
ALTER TABLE employees
DROP COLUMN age;
```

---

### Modify Column

แก้ไขชนิดข้อมูลหรือขนาดคอลัมน์

```sql
ALTER TABLE employees
MODIFY salary FLOAT;
```

---

### Rename Column

เปลี่ยนชื่อคอลัมน์

```sql
ALTER TABLE employees
RENAME COLUMN salary TO monthly_salary;
```