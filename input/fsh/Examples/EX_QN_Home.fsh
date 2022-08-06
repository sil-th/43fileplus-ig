Instance: QnHomeAnswer
InstanceOf: QuestionnaireResponse
Title: "การตอบแบบสำรวจด้านสุขาภิบาลของครัวเรือน"
Description: "ใช้ประกอบการรายงานแฟ้ม HOME"
Usage: #example
* questionnaire = $QN_TH_Home
* status = #completed
* subject = Reference(Location/Patient1Home)
* subject.type = "Location"
* authored = "2022-02-19T14:15:00+07:00"
* author = Reference(Practitioner/PractitionerVolunteer1)
* author.type = "Practitioner"
* item[0]
  * linkId = "1"
  * text = "การมีส้วมและประเภทของส้วม"
  * answer[0]
    * valueCoding.code = #3
    * valueCoding.display = "มี ส้วมนั่งราบ บำบัดด้วยถังสำเร็จรูป"
* item[+]
  * linkId = "2"
  * text = "น้ำดื่มพอเพียงตลอดปี"
  * answer[0]
    * valueCoding.code = #1
    * valueCoding.display = "เพียงพอ"
* item[+]
  * linkId = "3"
  * text = "ความพอเพียงของน้ำใช้"
  * item[0]
    * linkId = "3.1"
    * text = "ความพอเพียงของน้ำใช้"
    * answer[0]
      * valueCoding.code = #1
      * valueCoding.display = "เพียงพอ"
  * item[+]
    * linkId = "3.2"
    * text = "ประเภทน้ำใช้อุปโภค"
    * answer[0]
      * valueString = "รอการระบุรหัส"
* item[+]
  * linkId = "4"
  * text = "ประเภทแหล่งน้ำดื่มที่บริโภคเป็นประจำ"
  * answer[0]
    * valueCoding.code = #6
    * valueCoding.display = "น้ำบรรจุเสร็จ"
* item[+]
  * linkId = "5"
  * text = "รหัสวิธีการกำจัดมูลฝอยทั่วไป"
  * answer[0]
    * valueCoding.code = #5
    * valueCoding.display = "ท้องถิ่นให้บริการ"
* item[+]
  * linkId = "6"
  * text = "การจัดบ้านเป็นระเบียบเรียบร้อยและถูกสุขลักษณะ"
  * answer[0]
    * valueCoding.code = #1
    * valueCoding.display = "ถูก"
* item[+]
  * linkId = "7"
  * text = "ความคงทนถาวร"
  * answer[0]
    * valueCoding.code = #2
    * valueCoding.display = "คงทน 5 ปี ขึ้นไป"
* item[+]
  * linkId = "8"
  * text = "ความสะอาด"
  * answer[0]
    * valueCoding.code = #1
    * valueCoding.display = "สะอาด"
* item[+]
  * linkId = "9"
  * text = "การระบายอากาศ"
  * answer[0]
    * valueCoding.code = #1
    * valueCoding.display = "ระบาย"
* item[+]
  * linkId = "10"
  * text = "แสงสว่าง"
  * answer[0]
    * valueCoding.code = #1
    * valueCoding.display = "เพียงพอ"
* item[+]
  * linkId = "11"
  * text = "การบำบัด/กำจัดน้ำเสีย"
  * answer[0]
    * valueCoding.code = #3
    * valueCoding.display = "ลงระบบบำบัดน้ำเสียรวม"
* item[+]
  * linkId = "12"
  * text = "สารปรุงแต่งในครัว"
  * answer[0]
    * valueCoding.code = #1
    * valueCoding.display = "ใช้"
* item[+]
  * linkId = "13"
  * text = "การควบคุมแมลงนำโรค"
  * answer[0]
    * valueCoding.code = #1
    * valueCoding.display = "ควบคุม"
* item[+]
  * linkId = "14"
  * text = "การควบคุมสัตว์นำโรค"
  * item[0]
    * linkId = "14.1"
    * text = "การควบคุมสัตว์นำโรค"
    * answer[0]
      * valueCoding.code = #1
      * valueCoding.display = "ควบคุม"
  * item[+]
    * linkId = "14.2"
    * text = "การกำจัดหนู"
    * answer[0]
      * valueCoding.code = #1
      * valueCoding.display = "มี"
  * item[+]
    * linkId = "14.3"
    * text = "การกำจัดแมลงสาบ"
    * answer[0]
      * valueCoding.code = #1
      * valueCoding.display = "มี"
  * item[+]
    * linkId = "14.4"
    * text = "การกำจัดแมลงวัน"
    * answer[0]
      * valueCoding.code = #1
      * valueCoding.display = "มี"
  * item[+]
    * linkId = "14.5"
    * text = "การกำจัดยุง"
    * answer[0]
      * valueCoding.code = #1
      * valueCoding.display = "มี"
* item[+]
  * linkId = "15"
  * text = "การจัดเก็บสารเคมีอันตราย"
  * answer[0]
    * valueCoding.code = #2
    * valueCoding.display = "เก็บใส่ในภาชนะอื่นๆ"
* item[+]
  * linkId = "16"
  * text = "การเลี้ยงสัตว์"
  * answer[0]
    * valueCoding.code = #0
    * valueCoding.display = "เลี้ยง"
* item[+]
  * linkId = "17"
  * text = "การกำจัดมูลสัตว์"
  * answer[0]
    * valueCoding.code = #0
    * valueCoding.display = "มี"
* item[+]
  * linkId = "18"
  * text = "ถังขยะในบ้าน"
  * answer[0]
    * valueCoding.code = #0
    * valueCoding.display = "มี"
* item[+]
  * linkId = "19"
  * text = "ความสะอาด"
  * answer[0]
    * valueCoding.code = #0
    * valueCoding.display = "สะอาด"
* item[+]
  * linkId = "20"
  * text = "การจัดสุขาภิบาลที่พักอาศัย"
  * item[0]
    * linkId = "20.1"
    * text = "การจัดสุขาภิบาลที่พักอาศัย"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
  * item[+]
    * linkId = "20.2"
    * text = "การจัดครัว"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
  * item[+]
    * linkId = "20.3"
    * text = "การจัดเก็บอาหาร"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
  * item[+]
    * linkId = "20.4"
    * text = "ภาชนะบรรจุอาหาร"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "มีถูกหลัก"
  * item[+]
    * linkId = "20.5"
    * text = "การล้างภาชนะบรรจุอาหาร"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
  * item[+]
    * linkId = "20.6"
    * text = "การจัดการภาชนะบรรจุอาหาร"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
  * item[+]
    * linkId = "20.7"
    * text = "ถังขยะในครัว"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "มีถูกหลัก"
  * item[+]
    * linkId = "20.8"
    * text = "ความสะอาดในครัว"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "มีถูกหลัก"
  * item[+]
    * linkId = "20.9"
    * text = "สรุปการจัดการสุขาภิบาลอาหาร"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ถูกหลัก"
  * item[+]
    * linkId = "20.10"
    * text = "การให้เกลือไอโอดีน"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ใช้"
  * item[+]
    * linkId = "20.11"
    * text = "การใช้ผลิตภัณฑ์ผสมไอโอดีน"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ใช้"
  * item[+]
    * linkId = "20.12"
    * text = "การใช้สารไอโอดีน"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ใช้"
  * item[+]
    * linkId = "20.13"
    * text = "สมุนไพรฟ้าทะลายโจร"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
  * item[+]
    * linkId = "20.14"
    * text = "สมุนไพรว่านหางจระเข้"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
  * item[+]
    * linkId = "20.15"
    * text = "สมุนไพรสเลดพังพอน"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
  * item[+]
    * linkId = "20.16"
    * text = "สมุนไพรชุมเห็ดเทศ"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
  * item[+]
    * linkId = "20.17"
    * text = "สมุนไพรขมิ้นชัน"
    * answer[0]
      * valueCoding.code = #0
      * valueCoding.display = "ไม่มี"
  * item[+]
    * linkId = "20.18"
    * text = "ลักษณะชุมชนที่ตั้งของบ้าน"
    * answer[0]
      * valueCoding.code = #1
      * valueCoding.display = "บ้านเดี่ยว"
  * item[+]
    * linkId = "20.19"
    * text = "ลักษณะพื้นที่ที่ตั้งของบ้าน"
    * answer[0]
      * valueCoding.code = #1
      * valueCoding.display = "บ้านบนพื้นที่ราบ"
* item[+]
  * linkId = "21"
  * text = "สถานที่ใกล้เคียงกับบ้านนี้"
  * answer[0]
    * valueString = "วัด"