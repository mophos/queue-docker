# Docker image for Q4U

# Last update
## 2019-02-22 14:30
- แก้ไขข้อผิดพลาดการอัปเดทผู้ใช้งาน
- แก้ไขการออกคิวใหม่ผ่าน API กรณีได้คิวเดิมซ้ำกับที่มีอยู่แล้ว
- แก้ไขการเล่นไฟล์เสียง
- เพิ่มการเรียกหน้าแสดงคิวโดยตรง ไม่ต้องล๊อกอิน
  
  - การแสดงคิวของจุดบริการ URL: http://xx.xx.xx.xx:xx/#/display-queue?token=TOKEN&servicePointId=6&servicePointName=ตรวจโรคทั่วไป
  
  `TOKEN` เอาจากเมนู Generate token, `servicePointId` เอาจากตาราง `q4u_service_points`, `servicePointName` เอาจากตาราง `q4u_service_points`
  - การแสดงคิวของแผนก URL: http://xx.xx.xx.xx:xx/#/display-queue-department?token=TOKEN&departmentId=8&departmentName=ตรวจโรคทั่วไป
  
  `TOKEN` เอาจากเมนู Generate token, `departmentId` เอาจากตาราง `q4u_departments`, `departmentName` เอาจากตาราง `q4u_departments`
