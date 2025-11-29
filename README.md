# Database Systems

## Tutorial
- https://www.w3schools.com/MySQL
- https://www.tutorialspoint.com/mysql

## Environment Setup
1. เข้า `Environment Variables`
2. กด Edit Path ในส่วนของ System variables
3. เพิ่ม path ของ MySQL เช่น `C:\Program Files\MySQL\MySQL Server 8.0\bin`
4. กด OK เพื่อบันทึกการเปลี่ยนแปลง

สามารถเรียกใชงาน `mysql -u root -p` ได้จาก Command Prompt

## Change Password

1. ปิด MySQL Service
2. ใช้คำสั่ง `mysqld --console --skip-grant-tables` เพื่อเปิด MySQL โดยไม่ต้องตรวจสอบสิทธิ์
3. เปิด Command Prompt ใหม่ แล้วใช้คำสั่ง `mysql -u root` เพื่อเข้าสู่ระบบ MySQL
4. ใช้คำสั่ง SQL ต่อไปนี้เพื่อเปลี่ยนรหัสผ่าน:
   ```sql
   ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';
   FLUSH PRIVILEGES;
   ```
5. ปิด MySQL Service ที่รันแบบข้ามสิทธิ์
6. เปิด MySQL Service ใหม่
7. ใช้คำสั่ง `mysql -u root -p` เพื่อเข้าสู่ระบบ MySQL เพื่อทดสอบรหัสผ่านใหม่