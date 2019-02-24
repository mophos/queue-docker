

# Docker image for Q4U ![Travis (.org)](https://img.shields.io/travis/mophos/queue-web.svg?label=web) ![Travis (.org)](https://img.shields.io/travis/mophos/queue-api.svg?label=api) [![](https://images.microbadger.com/badges/version/mophos/queue.svg)](https://microbadger.com/images/mophos/queue "Q4U Docker image") [![](https://images.microbadger.com/badges/image/mophos/queue.svg)](https://microbadger.com/images/mophos/queue "Q4U Docker image")


# Last update
## 2019-02-24 23:35
- เพิ่มการเรียกคิวจากหน้าเรียกคิวห้องตรวจให้แสดงผลที่หน้าแสดงคิวรวมแผนก
- แก้ไขการแสดงผลหน้าแสดงคิวรวมแผนก
- แก้ไขข้อผิดพลาดการเรียกคิวกรณีมีห้องมากกว่า 5 ห้อง
- แก้ไขข้อผิดพลาดการอัปเดทผู้ใช้งาน
- แก้ไขการออกคิวใหม่ผ่าน API กรณีได้คิวเดิมซ้ำกับที่มีอยู่แล้ว
- แก้ไขการเล่นไฟล์เสียง
- เพิ่มการเรียกหน้าแสดงคิวโดยตรง ไม่ต้องล๊อกอิน
  
  - การแสดงคิวของจุดบริการ URL: http://xx.xx.xx.xx:xx/#/display-queue?token=TOKEN&servicePointId=6&servicePointName=ตรวจโรคทั่วไป
  
  `TOKEN` เอาจากเมนู Generate token, `servicePointId` เอาจากตาราง `q4u_service_points`, `servicePointName` เอาจากตาราง `q4u_service_points`
  - การแสดงคิวของแผนก URL: http://xx.xx.xx.xx:xx/#/display-queue-department?token=TOKEN&departmentId=8&departmentName=ตรวจโรคทั่วไป
  
  `TOKEN` เอาจากเมนู Generate token, `departmentId` เอาจากตาราง `q4u_departments`, `departmentName` เอาจากตาราง `q4u_departments`
