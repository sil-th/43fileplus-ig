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
* code = $CS_Meta_QnType#HOME "ข้อมูลสุขาภิบาลของหลังคาเรือน ในแฟ้ม HOME"
* item[0]
  * linkId = "1"
  * text = "การมีส้วมและประเภทของส้วม"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q01-0 "ไม่มี"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q01-1 "มี ส้วมนั่งราบ บำบัดด้วยบ่อเกรอะ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q01-2 "มี ส้วมนั่งยอง บำบัดด้วยบ่อเกรอะ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q01-3 "มี ส้วมนั่งราบ บำบัดด้วยถังสำเร็จรูป"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q01-4 "มี ส้วมนั่งยอง บำบัดด้วยถังสำเร็จรูป"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q01-9 "ไม่ทราบ"
* item[+]
  * linkId = "2"
  * text = "น้ำดื่มพอเพียงตลอดปี"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q02-0 "ไม่เพียงพอ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q02-1 "เพียงพอ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q02-9 "ไม่ทราบ"
* item[+]
  * linkId = "3"
  * text = "ความพอเพียงของน้ำใช้"
  * type = #group
  * item[0]
    * linkId = "3.1"
    * text = "ความพอเพียงของน้ำใช้"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q03.1-0 "ไม่เพียงพอ"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q03.1-1 "เพียงพอ"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q03.1-9 "ไม่ทราบ"
  * item[+]
    * linkId = "3.2"
    * text = "ประเภทน้ำใช้อุปโภค"
    * type = #string
* item[+]
  * linkId = "4"
  * text = "ประเภทแหล่งน้ำดื่มที่บริโภคเป็นประจำ"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q04-1 "น้ำฝน"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q04-2 "น้ำประปา"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q04-3 "น้ำบาดาล"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q04-4 "บ่อน้ำตื้น"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q04-5 "สระน้ำ แม่น้ำ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q04-6 "น้ำบรรจุเสร็จ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q04-7 "น้ำตู้หยอดเหรียญ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q04-9 "ไม่ทราบ"
* item[+]
  * linkId = "5"
  * text = "รหัสวิธีการกำจัดมูลฝอยทั่วไป"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q05-1 "กำจัดเองโดยการฝัง"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q05-2 "กำจัดเองโดยการเผา"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q05-3 "กำจัดเองโดยการหมักทำปุ๋ย"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q05-4 "กองทิ้ง"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q05-5 "ท้องถิ่นให้บริการ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q05-9 "ไม่ทราบ"
* item[+]
  * linkId = "6"
  * text = "การจัดบ้านเป็นระเบียบเรียบร้อยและถูกสุขลักษณะ"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q06-0 "ไม่ถูก"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q06-1 "ถูก"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q06-9 "ไม่ทราบ"
* item[+]
  * linkId = "7"
  * text = "ความคงทนถาวร"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q07-0 "ไม่คงทน"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q07-1 "คงทน 1-4 ปี"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q07-2 "คงทน 5 ปี ขึ้นไป"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q07-9 "ไม่ทราบ"
* item[+]
  * linkId = "8"
  * text = "ความสะอาด"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q08-0 "ไม่สะอาด"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q08-1 "สะอาด"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q08-9 "ไม่ทราบ"
* item[+]
  * linkId = "9"
  * text = "การระบายอากาศ"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q09-0 "ไม่ระบาย"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q09-1 "ระบาย"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q09-9 "ไม่ทราบ"
* item[+]
  * linkId = "10"
  * text = "แสงสว่าง"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q10-0 "ไม่เพียงพอ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q10-1 "เพียงพอ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q10-9 "ไม่ทราบ"
* item[+]
  * linkId = "11"
  * text = "การบำบัด/กำจัดน้ำเสีย"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q11-0 "ไม่บำบัด/กำจัด"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q11-1 "ลงบ่อซึม"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q11-2 "ลงบ่อเกรอะ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q11-3 "ลงระบบบำบัดน้ำเสียรวม"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q11-9 "ไม่ทราบ"
* item[+]
  * linkId = "12"
  * text = "สารปรุงแต่งในครัว"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q12-0 "ไม่ใช้"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q12-1 "ใช้"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q12-9 "ไม่ทราบ"
* item[+]
  * linkId = "13"
  * text = "การควบคุมแมลงนำโรค"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q13-0 "ไม่ควบคุม"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q13-1 "ควบคุม"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q13-9 "ไม่ทราบ"
* item[+]
  * linkId = "14"
  * text = "การควบคุมสัตว์นำโรค"
  * type = #group
  * item[0]
    * linkId = "14.1"
    * text = "การควบคุมสัตว์นำโรค"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q14.1-0 "ไม่ควบคุม"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q14.1-1 "ควบคุม"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q14.1-9 "ไม่ทราบ"
  * item[+]
    * linkId = "14.2"
    * text = "การกำจัดหนู"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q14.2-0 "ไม่มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q14.2-1 "มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q14.2-9 "ไม่ทราบ"
  * item[+]
    * linkId = "14.3"
    * text = "การกำจัดแมลงสาบ"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q14.3-0 "ไม่มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q14.3-1 "มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q14.3-9 "ไม่ทราบ"
  * item[+]
    * linkId = "14.4"
    * text = "การกำจัดแมลงวัน"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q14.4-0 "ไม่มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q14.4-1 "มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q14.4-9 "ไม่ทราบ"
  * item[+]
    * linkId = "14.5"
    * text = "การกำจัดยุง"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q14.5-0 "ไม่มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q14.5-1 "มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q14.5-9 "ไม่ทราบ"
* item[+]
  * linkId = "15"
  * text = "การจัดเก็บสารเคมีอันตราย"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q15-0 "ไม่มีการจัดเก็บ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q15-1 "เก็บในตู้มิดชิด"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q15-2 "เก็บใส่ในภาชนะอื่นๆ"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q15-9 "ไม่ทราบ"
* item[+]
  * linkId = "16"
  * text = "การเลี้ยงสัตว์"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q16-0 "เลี้ยง"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q16-1 "ไม่เลี้ยง"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q16-9 "ไม่ทราบ"
* item[+]
  * linkId = "17"
  * text = "การกำจัดมูลสัตว์"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q17-0 "มี"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q17-1 "ไม่มี"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q17-9 "ไม่ทราบ"
* item[+]
  * linkId = "18"
  * text = "ถังขยะในบ้าน"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q18-0 "มี"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q18-1 "ไม่มี"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q18-9 "ไม่ทราบ"
* item[+]
  * linkId = "19"
  * text = "ความสะอาด"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Home#Q19-0 "สะอาด"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q19-1 "ไม่สะอาด"
  * answerOption[+]
    * valueCoding = $CS_QN_Home#Q19-9 "ไม่ทราบ"
* item[+]
  * linkId = "20"
  * text = "การจัดสุขาภิบาลที่พักอาศัย"
  * type = #group
  * item[0]
    * linkId = "20.1"
    * text = "การจัดสุขาภิบาลที่พักอาศัย"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.1-0 "ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.1-1 "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.1-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.2"
    * text = "การจัดครัว"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.2-0 "ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.2-1 "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.2-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.3"
    * text = "การจัดเก็บอาหาร"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.3-0 "ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.3-1 "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.3-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.4"
    * text = "ภาชนะบรรจุอาหาร"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.4-0 "มีถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.4-1 "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.4-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.5"
    * text = "การล้างภาชนะบรรจุอาหาร"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.5-0 "ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.5-1 "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.5-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.6"
    * text = "การจัดการภาชนะบรรจุอาหาร"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.6-0 "ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.6-1 "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.6-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.7"
    * text = "ถังขยะในครัว"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.7-0 "มีถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.7-1 "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.7-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.8"
    * text = "ความสะอาดในครัว"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.8-0 "มีถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.8-1 "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.8-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.9"
    * text = "สรุปการจัดการสุขาภิบาลอาหาร"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.9-0 "ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.9-1 "ไม่ถูกหลัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.9-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.10"
    * text = "การให้เกลือไอโอดีน"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.10-0 "ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.10-1 "ไม่ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.10-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.11"
    * text = "การใช้ผลิตภัณฑ์ผสมไอโอดีน"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.11-0 "ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.11-1 "ไม่ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.11-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.12"
    * text = "การใช้สารไอโอดีน"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.12-0 "ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.12-1 "ไม่ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.12-9 "ไม่ทราบ"
  * item[+]
    * linkId = "20.13"
    * text = "สมุนไพรฟ้าทะลายโจร"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.13-0 "ไม่มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.13-1 "มี ไม่ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.13-2 "มี และใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.13-3 "ไม่ทราบ"
  * item[+]
    * linkId = "20.14"
    * text = "สมุนไพรว่านหางจระเข้"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.14-0 "ไม่มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.14-1 "มี ไม่ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.14-2 "มี และใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.14-3 "ไม่ทราบ"
  * item[+]
    * linkId = "20.15"
    * text = "สมุนไพรสเลดพังพอน"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.15-0 "ไม่มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.15-1 "มี ไม่ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.15-2 "มี และใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.15-3 "ไม่ทราบ"
  * item[+]
    * linkId = "20.16"
    * text = "สมุนไพรชุมเห็ดเทศ"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.16-0 "ไม่มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.16-1 "มี ไม่ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.16-2 "มี และใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.16-3 "ไม่ทราบ"
  * item[+]
    * linkId = "20.17"
    * text = "สมุนไพรขมิ้นชัน"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.17-0 "ไม่มี"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.17-1 "มี ไม่ใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.17-2 "มี และใช้"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.17-3 "ไม่ทราบ"
  * item[+]
    * linkId = "20.18"
    * text = "ลักษณะชุมชนที่ตั้งของบ้าน"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.18-1 "บ้านเดี่ยว"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.18-2 "ทาวเฮ้าส์"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.18-3 "ห้องแถว"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.18-4 "คอนโด"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.18-5 "เพิงพัก"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.18-6 "ชุมชนแออัด"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.18-7 "เรือนแพ"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.18-9 "อื่นๆ"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.18-x "มีเลขที่บ้าน แต่ไม่มีบ้าน"
  * item[+]
    * linkId = "20.19"
    * text = "ลักษณะพื้นที่ที่ตั้งของบ้าน"
    * type = #choice
    * answerOption[0]
      * valueCoding = $CS_QN_Home#Q20.19-1 "บ้านบนพื้นที่ราบ"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.19-2 "บ้านบนพื้นที่สูง ภูเขา"
    * answerOption[+]
      * valueCoding = $CS_QN_Home#Q20.19-3 "เรือนแพ"
* item[+]
  * linkId = "21"
  * text = "สถานที่ใกล้เคียงกับบ้านนี้"
  * type = #string


