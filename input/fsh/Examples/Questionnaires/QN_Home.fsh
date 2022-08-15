Instance: questionnaire-home
InstanceOf: Questionnaire
Title: "ตัวอย่าง Questionnaire: แบบสำรวจด้านสุขาภิบาลของครัวเรือน"
Description: "ใช้ประกอบการรายงานแฟ้ม HOME"
Usage: #example
* url = $QN_TH_Home
* status = #active
* experimental = true
* subjectType = #Location
* date = "2022-01-01"
* code = $CS_THCC_QnType#HOME "ข้อมูลสุขาภิบาลของหลังคาเรือน ในแฟ้ม HOME"
* item[0]
  * linkId = "1"
  * text = "การมีส้วมและประเภทของส้วม"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่มี"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "มี ส้วมนั่งราบ บำบัดด้วยบ่อเกรอะ"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "มี ส้วมนั่งยอง บำบัดด้วยบ่อเกรอะ"
  * answerOption[+]
    * valueCoding.code = #3
    * valueCoding.display = "มี ส้วมนั่งราบ บำบัดด้วยถังสำเร็จรูป"
  * answerOption[+]
    * valueCoding.code = #4
    * valueCoding.display = "มี ส้วมนั่งยอง บำบัดด้วยถังสำเร็จรูป"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "2"
  * text = "น้ำดื่มพอเพียงตลอดปี"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่เพียงพอ"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "เพียงพอ"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "3"
  * text = "ความพอเพียงของน้ำใช้"
  * type = #group
  * item[0]
    * linkId = "3.1"
    * text = "ความพอเพียงของน้ำใช้"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่เพียงพอ"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "เพียงพอ"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "3.2"
    * text = "ประเภทน้ำใช้อุปโภค"
    * type = #string
* item[+]
  * linkId = "4"
  * text = "ประเภทแหล่งน้ำดื่มที่บริโภคเป็นประจำ"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #1
    * valueCoding.display = "น้ำฝน"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "น้ำประปา"
  * answerOption[+]
    * valueCoding.code = #3
    * valueCoding.display = "น้ำบาดาล"
  * answerOption[+]
    * valueCoding.code = #4
    * valueCoding.display = "บ่อน้ำตื้น"
  * answerOption[+]
    * valueCoding.code = #5
    * valueCoding.display = "สระน้ำ แม่น้ำ"
  * answerOption[+]
    * valueCoding.code = #6
    * valueCoding.display = "น้ำบรรจุเสร็จ"
  * answerOption[+]
    * valueCoding.code = #7
    * valueCoding.display = "น้ำตู้หยอดเหรียญ"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "5"
  * text = "รหัสวิธีการกำจัดมูลฝอยทั่วไป"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #1
    * valueCoding.display = "กำจัดเองโดยการฝัง"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "กำจัดเองโดยการเผา"
  * answerOption[+]
    * valueCoding.code = #3
    * valueCoding.display = "กำจัดเองโดยการหมักทำปุ๋ย"
  * answerOption[+]
    * valueCoding.code = #4
    * valueCoding.display = "กองทิ้ง"
  * answerOption[+]
    * valueCoding.code = #5
    * valueCoding.display = "ท้องถิ่นให้บริการ"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "6"
  * text = "การจัดบ้านเป็นระเบียบเรียบร้อยและถูกสุขลักษณะ"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่ถูก"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "ถูก"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "7"
  * text = "ความคงทนถาวร"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่คงทน"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "คงทน 1-4 ปี"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "คงทน 5 ปี ขึ้นไป"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "8"
  * text = "ความสะอาด"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่สะอาด"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "สะอาด"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "9"
  * text = "การระบายอากาศ"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่ระบาย"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "ระบาย"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "10"
  * text = "แสงสว่าง"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่เพียงพอ"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "เพียงพอ"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "11"
  * text = "การบำบัด/กำจัดน้ำเสีย"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่บำบัด/กำจัด"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "ลงบ่อซึม"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "ลงบ่อเกรอะ"
  * answerOption[+]
    * valueCoding.code = #3
    * valueCoding.display = "ลงระบบบำบัดน้ำเสียรวม"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "12"
  * text = "สารปรุงแต่งในครัว"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่ใช้"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "ใช้"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "13"
  * text = "การควบคุมแมลงนำโรค"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่ควบคุม"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "ควบคุม"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "14"
  * text = "การควบคุมสัตว์นำโรค"
  * type = #group
  * item[0]
    * linkId = "14.1"
    * text = "การควบคุมสัตว์นำโรค"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่ควบคุม"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ควบคุม"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "14.2"
    * text = "การกำจัดหนู"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "มี"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "14.3"
    * text = "การกำจัดแมลงสาบ"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "มี"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "14.4"
    * text = "การกำจัดแมลงวัน"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "มี"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "14.5"
    * text = "การกำจัดยุง"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "มี"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "15"
  * text = "การจัดเก็บสารเคมีอันตราย"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ไม่มีการจัดเก็บ"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "เก็บในตู้มิดชิด"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "เก็บใส่ในภาชนะอื่นๆ"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "16"
  * text = "การเลี้ยงสัตว์"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "เลี้ยง"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "ไม่เลี้ยง"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "17"
  * text = "การกำจัดมูลสัตว์"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "มี"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "ไม่มี"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "18"
  * text = "ถังขยะในบ้าน"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "มี"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "ไม่มี"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "19"
  * text = "ความสะอาด"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "สะอาด"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "ไม่สะอาด"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่ทราบ"
* item[+]
  * linkId = "20"
  * text = "การจัดสุขาภิบาลที่พักอาศัย"
  * type = #group
  * item[0]
    * linkId = "20.1"
    * text = "การจัดสุขาภิบาลที่พักอาศัย"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.2"
    * text = "การจัดครัว"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.3"
    * text = "การจัดเก็บอาหาร"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.4"
    * text = "ภาชนะบรรจุอาหาร"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "มีถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.5"
    * text = "การล้างภาชนะบรรจุอาหาร"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.6"
    * text = "การจัดการภาชนะบรรจุอาหาร"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.7"
    * text = "ถังขยะในครัว"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "มีถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.8"
    * text = "ความสะอาดในครัว"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "มีถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.9"
    * text = "สรุปการจัดการสุขาภิบาลอาหาร"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.10"
    * text = "การให้เกลือไอโอดีน"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ใช้"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ใช้"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.11"
    * text = "การใช้ผลิตภัณฑ์ผสมไอโอดีน"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ใช้"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ใช้"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.12"
    * text = "การใช้สารไอโอดีน"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ใช้"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "ไม่ใช้"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.13"
    * text = "สมุนไพรฟ้าทะลายโจร"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "มี ไม่ใช้"
    * answerOption[+]
      * valueCoding.code = #2
      * valueCoding.display = "มี และใช้"
    * answerOption[+]
      * valueCoding.code = #3
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.14"
    * text = "สมุนไพรว่านหางจระเข้"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "มี ไม่ใช้"
    * answerOption[+]
      * valueCoding.code = #2
      * valueCoding.display = "มี และใช้"
    * answerOption[+]
      * valueCoding.code = #3
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.15"
    * text = "สมุนไพรสเลดพังพอน"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "มี ไม่ใช้"
    * answerOption[+]
      * valueCoding.code = #2
      * valueCoding.display = "มี และใช้"
    * answerOption[+]
      * valueCoding.code = #3
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.16"
    * text = "สมุนไพรชุมเห็ดเทศ"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "มี ไม่ใช้"
    * answerOption[+]
      * valueCoding.code = #2
      * valueCoding.display = "มี และใช้"
    * answerOption[+]
      * valueCoding.code = #3
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.17"
    * text = "สมุนไพรขมิ้นชัน"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
    * answerOption[+]
      * valueCoding.code = #1
      * valueCoding.display = "มี ไม่ใช้"
    * answerOption[+]
      * valueCoding.code = #2
      * valueCoding.display = "มี และใช้"
    * answerOption[+]
      * valueCoding.code = #3
      * valueCoding.display = "ไม่ทราบ"
  * item[+]
    * linkId = "20.18"
    * text = "ลักษณะชุมชนที่ตั้งของบ้าน"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #1
      * valueCoding.display = "บ้านเดี่ยว"
    * answerOption[+]
      * valueCoding.code = #2
      * valueCoding.display = "ทาวเฮ้าส์"
    * answerOption[+]
      * valueCoding.code = #3
      * valueCoding.display = "ห้องแถว"
    * answerOption[+]
      * valueCoding.code = #4
      * valueCoding.display = "คอนโด"
    * answerOption[+]
      * valueCoding.code = #5
      * valueCoding.display = "เพิงพัก"
    * answerOption[+]
      * valueCoding.code = #6
      * valueCoding.display = "ชุมชนแออัด"
    * answerOption[+]
      * valueCoding.code = #7
      * valueCoding.display = "เรือนแพ"
    * answerOption[+]
      * valueCoding.code = #9
      * valueCoding.display = "อื่นๆ"
    * answerOption[+]
      * valueCoding.code = #x
      * valueCoding.display = "มีเลขที่บ้าน แต่ไม่มีบ้าน"
  * item[+]
    * linkId = "20.19"
    * text = "ลักษณะพื้นที่ที่ตั้งของบ้าน"
    * type = #choice
    * answerOption[0]
      * valueCoding.code = #1
      * valueCoding.display = "บ้านบนพื้นที่ราบ"
    * answerOption[+]
      * valueCoding.code = #2
      * valueCoding.display = "บ้านบนพื้นที่สูง ภูเขา"
    * answerOption[+]
      * valueCoding.code = #3
      * valueCoding.display = "เรือนแพ"
* item[+]
  * linkId = "21"
  * text = "สถานที่ใกล้เคียงกับบ้านนี้"
  * type = #string


