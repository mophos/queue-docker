
 
# Docker image for Q4U ![Travis (.org)](https://img.shields.io/travis/mophos/queue-web.svg?label=web) ![Travis (.org)](https://img.shields.io/travis/mophos/queue-api.svg?label=api) [![](https://images.microbadger.com/badges/version/mophos/queue.svg)](https://microbadger.com/images/mophos/queue "Q4U Docker image") [![](https://images.microbadger.com/badges/image/mophos/queue.svg)](https://microbadger.com/images/mophos/queue "Q4U Docker image")

## ฐานข้อมูลและไฟล์คอนฟิกล่าสุดอยู่ที่ https://github.com/mophos/queue-docker-example

# Last updated

## 2019-07-05 09:00 (v3.4.0)
- เพิ่มค้นหาหน้าเรียกคิวห้องตรวจ
- เพิ่มตั้งค่าลำดับความสำคัญของประเภทผู้ป่วย
- เพิ่มการเรียงลำดับความสำคัญ หน้าเรียกคิวห้องตรวจ(แถบรอเรียก),หน้าเรียกคิวแผนก (แถบรอเรียก)
- ปรับการตั้งค่าเสียงให้ตั้งค่าได้ถึงช่องบริการ
```
ALTER TABLE `q4u_priorities` ADD COLUMN `priority_color` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `priority_prefix`;
ALTER TABLE `q4u_priorities` ADD COLUMN `priority_order` int(11) NULL DEFAULT 1 AFTER `priority_color`;
ALTER TABLE `q4u_priorities` DROP COLUMN `prority_color`;
ALTER TABLE `q4u_service_points` MODIFY COLUMN `sound_speed` decimal(3, 2) NULL DEFAULT NULL COMMENT 'ความเร็วเสียงเรียก' AFTER `sound_id`;
ALTER TABLE `q4u_service_rooms` ADD COLUMN `sound_id` int(11) NULL DEFAULT NULL AFTER `room_id`;
ALTER TABLE `q4u_service_rooms` DROP PRIMARY KEY;
ALTER TABLE `q4u_service_rooms` ADD PRIMARY KEY (`room_id`) USING BTREE;
```

## 2019-06-13 16:10 (v3.3.1)
- ปรับลำดับการแสดงผลคิว

## 2019-05-28 14:00 (v3.3.0)
- เพิ่มหน้า KIOSK
- เพิ่มประเภทผู้ใช้งาน
- `ALTER TABLE q4u_users MODIFY COLUMN user_type enum('ADMIN','MEMBER','KIOSK');`

## 2019-04-30 10:00 (v3.2.5)
- แก้ไข Bug การแสดงคิวปัจจุบันในหน้าจอแสดงคิว firefox ไม่แสดงผล

## 2019-04-29 22:45 (v3.2.4)
- แก้ไข Bug การออกเสียงในหน้าจอแสดงคิวแผนก

## 2019-04-29 20:34 (v3.2.3)
- Clean code and fixed MQTT Client

## 2019-04-28 22:34 (v3.2.2)
- แก้ไขการออกเสียงคิวห้องตรวจ (อีกครั้ง)

## 2019-04-28 19:42 (v3.2.1)
- แก้ไขการออกเสียงคิวห้องตรวจ (หน้าแสดงคิว ให้ทำการ Generate token ใหม่)
- แก้ไข Bug การออกเสียงในหน้าจอแสดงคิว

## 2019-04-26 13:30 (v3.2)
- แก้ไขข้อมูลบน H4U ไม่อัปเดทในหน้าเรียกคิวแผนก
- เพิ่มการพิมพ์บัตรคิวย้อนหลัง
- ตอนส่งต่อให้เลือกประเภทผู้ป่วยอัตโนมัติจากข้อมูลเดิม
- แก้ไขเรียกคิวซักประวัติแล้วคิวหายจากหน้ารอเรียก

## 2019-04-20 16:00 (v3.1)
- แก้ไขเสียงไม่ออกหน้าแสดงคิวแบบกลุ่ม

## 2019-04-17 23:15 (v3.0)
- ปรับการแสดงผลหน้าจอคิว คิวห้องตรวจ, คิวแผนก, คิวแบบกลุ่ม, คิวรวม
- เพิ่มการออกเสียง สิบ ยี่ ร้อย พัน 
- ปรับการแสดงเมนูด้านซ้ายมือให้ยุบ/ขยายได้ (Fixed)
- อัปเดท Angular, Fastify และ Dependencies อื่นๆ ให้เป็นตัวล่าสุด

## 2019-03-26 11:34 (v2.10)
- เพิ่ม prefix ก-ฮ 
- ปรับ speed การอ่านเสียง

## 2019-03-26 11:34 (v2.9)
- แก้ไขการแสดงผล/เรียกคิว แบบแผนก
- แก้ไข bug ตอนเรียกคิวแผนก
- เพิ่มการส่งต่อหน้ารอเรียกคิวเข้าห้องตรวจ
- แก้ไขการแสดงผลหน้าจอคิวห้องตรวจ
- แก้ไข bug จากโปรแกรมเรียกคิว (Queue Caller Desktop)

## 2019-03-19 09:20 (v2.8)
- แก้ไขการเรียกคิวแบบกลุ่ม/การแสดงผลแบบกลุ่ม

## 2019-03-12 10:17 (v2.7)
- เพิ่มการออกคิวจากประเภทผู้ป่วย

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
