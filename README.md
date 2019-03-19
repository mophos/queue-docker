

# Docker image for Q4U ![Travis (.org)](https://img.shields.io/travis/mophos/queue-web.svg?label=web) ![Travis (.org)](https://img.shields.io/travis/mophos/queue-api.svg?label=api) [![](https://images.microbadger.com/badges/version/mophos/queue.svg)](https://microbadger.com/images/mophos/queue "Q4U Docker image") [![](https://images.microbadger.com/badges/image/mophos/queue.svg)](https://microbadger.com/images/mophos/queue "Q4U Docker image")

## ฐานข้อมูลและไฟล์คอนฟิกล่าสุดอยู่ที่ https://github.com/mophos/queue-docker-example

# Last updated

## 2019-03-19 09:20 (v2.8)
- แก้ไขการเรียกคิวแบบกลุ่ม/การแสดงผลแบบกลุ่ม

## 2019-03-15 09:42 (v2.7)
- เพิ่มการออกคิวจากประเภทผู้ป่วย (อัปเดทฐานข้อมูล)
- ปรับการแสดงผลหน้าจอแสดงคิว (@dixonsatit)

## 2019-03-11 17:30 (v2.6)
- แก้ไข bug เปลี่ยนห้องตรวจ
- แก้ไขการแสดงเมนูแบบ responsive เมื่อใช้บน tablet
- แก้ไขการเลือกช่องบริการในหน้าเรียกคิวแบบกลุ่ม

## 2019-03-05 17:00 (v2.5)
- เพิ่มการพิมพ์บัตรคิวขนาดเล็ก (สำหรับแนบเอกสาร)

## 2019-03-1 11:45 (v2.4)
- แก้ไขการแสดงผลหน้าจอเรียกคิวแบบกลุ่ม
- เพื่อการเชื่อมต่อฐาน `dhos`
- แก้ไขการเชื่อมต่อฐาน `ezhos`
- เพิ่มการเรียกใช้งานหน้าจอแสดงคิวรับบริการทั้งหมดโดยเรียกผ่าน url: `http://xx.xx.xx.xx:xx/#/queue-center-patient?token=TOKEN` โดยที่ `TOKEN` ได้จากหน้า `Generate token`
- fixed MQTT authentication
- แก้ไขการเรียกคิว/แสดงคิว แบบกลุ่ม

## 2019-02-27 15:20 (v2.3)
- แก้ไขปัญหาเครื่องพิมพ์ไม่พิมพ์หลังจากสร้างคิว
- แก้ไขการแสดง Popup ห้องตรวจในกรณีที่ห้องตรวจมากกว่า 5 ในปุ่มเรียกคิวซักประวัติ
- แก้ไขข้อบกพร่องการแสดงคิวโดยตรง ไม่ต้องล๊อกอิน

## 2019-02-26 16:30 (v2.2)
- เพิ่มการเรียกคิวแบบกลุ่ม (กรณีแผนกเดียวกัน เช่น การเงินกับห้องยา)
- แก้ไขการส่งข้อมูลของ MQTT (use qos=0, retain=false)
- เพิ่มตารางใหม่ https://github.com/mophos/queue-docker-example/commit/e15175ce3723438cf548991de7b068ea882c471b

## 2019-02-25 23:53 (v2.1)
- เพิ่มการเรียกคิวเป็นกลุ่ม (มีอัพเดตฐานข้อมูล และ queue-config)
- เพิ่มค่าเริ่มต้นสำหรับผู้ใช้งานที่มี 1 จุดบริการ

## 2019-02-25 01:05
- หน้าสร้างคิว: ช่องค้นหาสามารถระบุ HN แล้วกด ENTER เพื่อสร้างคิว โดยไม่เลือกแผนก
- สามารถใช้คิวใน HIS เพื่อเป็นเลขคิวในระบบได้ เช่นใน HOSxP ใช้ `ovst.oqueue` ส่วน `universal` ใช้ฟิลด์ `his_queue` โดยต้องกำหนดค่าคอนฟิก `USE_HIS_QUEUE=Y` ในไฟล์ `queue-config` ค่าเริ่มต้นคือ ไม่ใช้ (`USE_HIS_QUEUE=N`)


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
