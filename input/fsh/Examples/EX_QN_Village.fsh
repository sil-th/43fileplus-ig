Instance: QnVillageAnswer
InstanceOf: QuestionnaireResponse
Title: "ตัวอย่าง QuestionnaireResponse: การตอบแบบสำรวจข้อมูลทั่วไปและข้อมูลที่เกี่ยวข้องกับสุขภาพของชุมชน"
Description: "ใช้ประกอบการรายงานแฟ้ม VILLAGE"
Usage: #example
* questionnaire = $QN_TH_Village
* status = #completed
* subject = Reference(Location/Village1)
* subject.type = "Location"
* authored = "2022-02-19T14:15:00+07:00"
* author = Reference(Practitioner/PractitionerVolunteer1)
* author.type = "Practitioner"
* item[0]
  * linkId = "1"
  * text = "จำนวนแพทย์แผนไทย แพทย์พื้นบ้าน แพทย์ทางเลือก"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "2"
  * text = "จำนวนพระในชุมชน"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "3"
  * text = "จำนวนผู้ในศาสนาในชุมชน"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "4"
  * text = "จำนวนหอกระจายข่าว"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "5"
  * text = "จำนวนสถานีวิทยุชุมชน"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "6"
  * text = "จำนวนศูนย์สาธารณสุขมูลฐาน"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "7"
  * text = "จำนวนคลินิก"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "8"
  * text = "จำนวนร้านขายยา"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "9"
  * text = "จำนวนศูนย์พัฒนาเด็กเล็ก"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "10"
  * text = "จำนวนโรงเรียนประถมศึกษา"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "11"
  * text = "จำนวนโรงเรียนมัธยมศึกษา"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "12"
  * text = "จำนวนวัด"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "13"
  * text = "จำนวนศาสนสถานอื่นๆ"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "14"
  * text = "จำนวนตลาดประเภทที่ 1"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "15"
  * text = "จำนวนร้านขายของชำ"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "16"
  * text = "จำนวนร้านอาหาร"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "17"
  * text = "จำนวนแผงลอยจำหน่ายอาหาร"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "18"
  * text = "จำนวนถังเก็บน้ำฝน"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "19"
  * text = "จำนวนฟาร์มสัตว์ปีก (ไก่, เป็ด, ห่าน, นก, ฯลฯ)"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "20"
  * text = "จำนวนฟาร์มเลี้ยงสัตว์ (สุกร, โค, กระบือ, ม้า, ฯลฯ)"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "21"
  * text = "ระบบกำจัดน้ำเสียในชุมชน"
  * answer[0]
    * valueCoding.code = #1
    * valueCoding.display = "มี"
* item[+]
  * linkId = "22"
  * text = "สถานที่จัดการมูลฝอยในชุมชน"
  * answer[0]
    * valueCoding.code = #4
    * valueCoding.display = "มีสถานที่รวบรวม คัดแยก และนำมูลฝอยไปใช้ประโยชน์"
* item[+]
  * linkId = "23"
  * text = "จำนวนโรงงานอุตสาหกรรม"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "24"
  * text = "จำนวนแหล่งอบายมุข"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "25"
  * text = "ประเภทของความเสี่ยงต่อภัยพิบัติ"
  * answer[0]
    * valueString = "น้ำท่วม"
* item[+]
  * linkId = "26"
  * text = "จำนวนชุมชนต่างด้าว"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "27"
  * text = "จำนวนชมรมออกกำลังกาย"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "28"
  * text = "จำนวนชมรมผู้สุงอายุ"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "29"
  * text = "จำนวนชมรมผู้พิการ"
  * answer[0]
    * valueInteger = 10
* item[+]
  * linkId = "30"
  * text = "จำนวนชมรม To Be Number 1"
  * answer[0]
    * valueInteger = 10