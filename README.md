# Database Systems

## Tutorial Resources

- [W3Schools MySQL Tutorial](https://www.w3schools.com/MySQL)
- [TutorialsPoint MySQL Tutorial](https://www.tutorialspoint.com/mysql)

---

## Environment Setup

### การตั้งค่า MySQL Path

1. เปิด **Environment Variables** (กด Win + Pause/Break → Advanced system settings)
2. ในส่วน **System variables** เลือก `Path` แล้วกด **Edit**
3. กด **New** และเพิ่ม path ของ MySQL:
   ```
   C:\Program Files\MySQL\MySQL Server 8.0\bin
   ```
4. กด **OK** เพื่อบันทึกการเปลี่ยนแปลง

### ทดสอบการติดตั้ง

เปิด Command Prompt และรันคำสั่ง:

```bash
mysql -u root -p
```

ถ้าสำเร็จจะขึ้นหน้าจอให้ใส่รหัสผ่าน

---

## Change Password

### วิธีเปลี่ยนรหัสผ่าน MySQL

**ขั้นตอนที่ 1:** ปิด MySQL Service
- เปิด Services (กด Win + R แล้วพิมพ์ `services.msc`)
- หา **MySQL** แล้วกด **Stop**

**ขั้นตอนที่ 2:** เปิด MySQL โดยข้ามการตรวจสอบสิทธิ์

เปิด Command Prompt แบบ Administrator แล้วรัน:

```bash
mysqld --console --skip-grant-tables
```

**ขั้นตอนที่ 3:** เชื่อมต่อ MySQL

เปิด Command Prompt หน้าต่างใหม่ แล้วรัน:

```bash
mysql -u root
```

**ขั้นตอนที่ 4:** เปลี่ยนรหัสผ่าน

```sql
ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';
FLUSH PRIVILEGES;
```

**ขั้นตอนที่ 5:** รีสตาร์ท MySQL
1. ปิด Command Prompt ที่รัน `mysqld` (กด Ctrl + C)
2. เปิด MySQL Service ใหม่ผ่าน Services

**ขั้นตอนที่ 6:** ทดสอบรหัสผ่านใหม่

```bash
mysql -u root -p
```

ใส่รหัสผ่านใหม่เพื่อทดสอบ

---

## Import/Export SQL Files

### Export ฐานข้อมูล

**Export ทั้งฐานข้อมูล**

```bash
mysqldump -u username -p database_name > output_file.sql
```

**ตัวอย่าง**

```bash
mysqldump -u root -p company_db > company_backup.sql
```

### Import ฐานข้อมูล

**ใช้ Command Line**

```bash
mysql -u username -p database_name < input_file.sql
```

**ตัวอย่าง**

```bash
mysql -u root -p company_db < company_backup.sql
```