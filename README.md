# Database Systems

## Change Password

1. ปิด MySQL Service
2. ใช้คำสั่ง `mysqld --console --skip-grant-tables` เพื่อเปิด MySQL โดยไม่ต้องตรวจสอบสิทธิ์
3. เปิด Command Prompt ใหม่ แล้วใช้คำสั่ง `mysql -u root` เพื่อเข้าสู่ระบบ MySQL
4. ใช้คำสั่ง SQL ต่อไปนี้เพื่อเปลี่ยนรหัสผ่าน:
   ```sql
   FLUSH PRIVILEGES;
   ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';
   ```
5. ปิด MySQL Service ที่รันแบบข้ามสิทธิ์
6. เปิด MySQL Service ใหม่
7. ใช้คำสั่ง `mysql -u root -p` เพื่อเข้าสู่ระบบ MySQL เพื่อทดสอบรหัสผ่านใหม่