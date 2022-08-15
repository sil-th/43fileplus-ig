Instance: questionnaireresponse-home1
InstanceOf: QuestionnaireResponse
Title: "ตัวอย่าง QuestionnaireResponse: การตอบแบบสำรวจด้านสุขาภิบาลของครัวเรือน"
Description: "ใช้ประกอบการรายงานแฟ้ม HOME"
Usage: #example
* questionnaire = $QN_TH_Home
* status = #completed
* subject = Reference(Location/location-patient1-home1)
* subject.type = "Location"
* authored = "2022-02-19T14:15:00+07:00"
* author = Reference(Practitioner/practitioner-volunteer1)
* author.type = "Practitioner"
* item[0]
  * linkId = "1"
  * text = "การมีส้วมและประเภทของส้วม"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q01-3 "มี ส้วมนั่งราบ บำบัดด้วยถังสำเร็จรูป"
* item[+]
  * linkId = "2"
  * text = "น้ำดื่มพอเพียงตลอดปี"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q02-1 "เพียงพอ"
* item[+]
  * linkId = "3"
  * text = "ความพอเพียงของน้ำใช้"
  * item[0]
    * linkId = "3.1"
    * text = "ความพอเพียงของน้ำใช้"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q03.1-1 "เพียงพอ"
  * item[+]
    * linkId = "3.2"
    * text = "ประเภทน้ำใช้อุปโภค"
    * answer[0]
      * valueString = "รอการระบุรหัส"
* item[+]
  * linkId = "4"
  * text = "ประเภทแหล่งน้ำดื่มที่บริโภคเป็นประจำ"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q04-6 "น้ำบรรจุเสร็จ"
* item[+]
  * linkId = "5"
  * text = "รหัสวิธีการกำจัดมูลฝอยทั่วไป"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q05-5 "ท้องถิ่นให้บริการ"
* item[+]
  * linkId = "6"
  * text = "การจัดบ้านเป็นระเบียบเรียบร้อยและถูกสุขลักษณะ"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q06-1 "ถูก"
* item[+]
  * linkId = "7"
  * text = "ความคงทนถาวร"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q07-2 "คงทน 5 ปี ขึ้นไป"
* item[+]
  * linkId = "8"
  * text = "ความสะอาด"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q08-1 "สะอาด"
* item[+]
  * linkId = "9"
  * text = "การระบายอากาศ"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q09-1 "ระบาย"
* item[+]
  * linkId = "10"
  * text = "แสงสว่าง"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q10-1 "เพียงพอ"
* item[+]
  * linkId = "11"
  * text = "การบำบัด/กำจัดน้ำเสีย"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q11-3 "ลงระบบบำบัดน้ำเสียรวม"
* item[+]
  * linkId = "12"
  * text = "สารปรุงแต่งในครัว"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q12-1 "ใช้"
* item[+]
  * linkId = "13"
  * text = "การควบคุมแมลงนำโรค"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q13-1 "ควบคุม"
* item[+]
  * linkId = "14"
  * text = "การควบคุมสัตว์นำโรค"
  * item[0]
    * linkId = "14.1"
    * text = "การควบคุมสัตว์นำโรค"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q14.1-1 "ควบคุม"
  * item[+]
    * linkId = "14.2"
    * text = "การกำจัดหนู"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q14.2-1 "มี"
  * item[+]
    * linkId = "14.3"
    * text = "การกำจัดแมลงสาบ"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q14.3-1 "มี"
  * item[+]
    * linkId = "14.4"
    * text = "การกำจัดแมลงวัน"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q14.4-1 "มี"
  * item[+]
    * linkId = "14.5"
    * text = "การกำจัดยุง"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q14.5-1 "มี"
* item[+]
  * linkId = "15"
  * text = "การจัดเก็บสารเคมีอันตราย"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q15-2 "เก็บใส่ในภาชนะอื่นๆ"
* item[+]
  * linkId = "16"
  * text = "การเลี้ยงสัตว์"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q16-0 "เลี้ยง"
* item[+]
  * linkId = "17"
  * text = "การกำจัดมูลสัตว์"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q17-0 "มี"
* item[+]
  * linkId = "18"
  * text = "ถังขยะในบ้าน"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q18-0 "มี"
* item[+]
  * linkId = "19"
  * text = "ความสะอาด"
  * answer[0]
    * valueCoding = $CS_QN_Home#Q19-0 "สะอาด"
* item[+]
  * linkId = "20"
  * text = "การจัดสุขาภิบาลที่พักอาศัย"
  * item[0]
    * linkId = "20.1"
    * text = "การจัดสุขาภิบาลที่พักอาศัย"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.1-0 "ถูกหลัก"
  * item[+]
    * linkId = "20.2"
    * text = "การจัดครัว"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.2-0 "ถูกหลัก"
  * item[+]
    * linkId = "20.3"
    * text = "การจัดเก็บอาหาร"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.3-0 "ถูกหลัก"
  * item[+]
    * linkId = "20.4"
    * text = "ภาชนะบรรจุอาหาร"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.4-0 "มีถูกหลัก"
  * item[+]
    * linkId = "20.5"
    * text = "การล้างภาชนะบรรจุอาหาร"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.5-0 "ถูกหลัก"
  * item[+]
    * linkId = "20.6"
    * text = "การจัดการภาชนะบรรจุอาหาร"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.6-0 "ถูกหลัก"
  * item[+]
    * linkId = "20.7"
    * text = "ถังขยะในครัว"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.7-0 "มีถูกหลัก"
  * item[+]
    * linkId = "20.8"
    * text = "ความสะอาดในครัว"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.8-0 "มีถูกหลัก"
  * item[+]
    * linkId = "20.9"
    * text = "สรุปการจัดการสุขาภิบาลอาหาร"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.9-0 "ถูกหลัก"
  * item[+]
    * linkId = "20.10"
    * text = "การให้เกลือไอโอดีน"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.10-0 "ใช้"
  * item[+]
    * linkId = "20.11"
    * text = "การใช้ผลิตภัณฑ์ผสมไอโอดีน"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.11-0 "ใช้"
  * item[+]
    * linkId = "20.12"
    * text = "การใช้สารไอโอดีน"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.12-0 "ใช้"
  * item[+]
    * linkId = "20.13"
    * text = "สมุนไพรฟ้าทะลายโจร"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.13-0 "ไม่มี"
  * item[+]
    * linkId = "20.14"
    * text = "สมุนไพรว่านหางจระเข้"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.14-0 "ไม่มี"
  * item[+]
    * linkId = "20.15"
    * text = "สมุนไพรสเลดพังพอน"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.15-0 "ไม่มี"
  * item[+]
    * linkId = "20.16"
    * text = "สมุนไพรชุมเห็ดเทศ"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.16-0 "ไม่มี"
  * item[+]
    * linkId = "20.17"
    * text = "สมุนไพรขมิ้นชัน"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.17-0 "ไม่มี"
  * item[+]
    * linkId = "20.18"
    * text = "ลักษณะชุมชนที่ตั้งของบ้าน"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.18-1 "บ้านเดี่ยว"
  * item[+]
    * linkId = "20.19"
    * text = "ลักษณะพื้นที่ที่ตั้งของบ้าน"
    * answer[0]
      * valueCoding = $CS_QN_Home#Q20.19-1 "บ้านบนพื้นที่ราบ"
* item[+]
  * linkId = "21"
  * text = "สถานที่ใกล้เคียงกับบ้านนี้"
  * answer[0]
    * valueString = "วัด"