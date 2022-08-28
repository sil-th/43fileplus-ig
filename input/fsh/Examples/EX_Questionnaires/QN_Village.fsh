Instance: questionnaire-village
InstanceOf: Questionnaire
Title: "ตัวอย่าง Questionnaire: แบบสำรวจข้อมูลทั่วไปและข้อมูลที่เกี่ยวข้องกับสุขภาพของชุมชน"
Description: "ใช้ประกอบการรายงานแฟ้ม VILLAGE"
Usage: #example
* url = $QN_TH_Village
* status = #active
* experimental = true
* subjectType = #Location
* date = "2022-01-01"
* code = $CS_Meta_QnType#VILLAGE "ข้อมูลทั่วไปและข้อมูลที่เกี่ยวข้องกับสุขภาพของชุมชน ในแฟ้ม VILLAGE"
* item[0]
  * linkId = "1"
  * text = "จำนวนแพทย์แผนไทย แพทย์พื้นบ้าน แพทย์ทางเลือก"
  * type = #integer
* item[+]
  * linkId = "2"
  * text = "จำนวนพระในชุมชน"
  * type = #integer
* item[+]
  * linkId = "3"
  * text = "จำนวนผู้ในศาสนาในชุมชน"
  * type = #integer
* item[+]
  * linkId = "4"
  * text = "จำนวนหอกระจายข่าว"
  * type = #integer
* item[+]
  * linkId = "5"
  * text = "จำนวนสถานีวิทยุชุมชน"
  * type = #integer
* item[+]
  * linkId = "6"
  * text = "จำนวนศูนย์สาธารณสุขมูลฐาน"
  * type = #integer
* item[+]
  * linkId = "7"
  * text = "จำนวนคลินิก"
  * type = #integer
* item[+]
  * linkId = "8"
  * text = "จำนวนร้านขายยา"
  * type = #integer
* item[+]
  * linkId = "9"
  * text = "จำนวนศูนย์พัฒนาเด็กเล็ก"
  * type = #integer
* item[+]
  * linkId = "10"
  * text = "จำนวนโรงเรียนประถมศึกษา"
  * type = #integer
* item[+]
  * linkId = "11"
  * text = "จำนวนโรงเรียนมัธยมศึกษา"
  * type = #integer
* item[+]
  * linkId = "12"
  * text = "จำนวนวัด"
  * type = #integer
* item[+]
  * linkId = "13"
  * text = "จำนวนศาสนสถานอื่นๆ"
  * type = #integer
* item[+]
  * linkId = "14"
  * text = "จำนวนตลาดประเภทที่ 1"
  * type = #integer
* item[+]
  * linkId = "15"
  * text = "จำนวนร้านขายของชำ"
  * type = #integer
* item[+]
  * linkId = "16"
  * text = "จำนวนร้านอาหาร"
  * type = #integer
* item[+]
  * linkId = "17"
  * text = "จำนวนแผงลอยจำหน่ายอาหาร"
  * type = #integer
* item[+]
  * linkId = "18"
  * text = "จำนวนถังเก็บน้ำฝน"
  * type = #integer
* item[+]
  * linkId = "19"
  * text = "จำนวนฟาร์มสัตว์ปีก (ไก่, เป็ด, ห่าน, นก, ฯลฯ)"
  * type = #integer
* item[+]
  * linkId = "20"
  * text = "จำนวนฟาร์มเลี้ยงสัตว์ (สุกร, โค, กระบือ, ม้า, ฯลฯ)"
  * type = #integer
* item[+]
  * linkId = "21"
  * text = "ระบบกำจัดน้ำเสียในชุมชน"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Village#Q21-0 "ไม่มี"
  * answerOption[+]
    * valueCoding = $CS_QN_Village#Q21-1 "มี"
  * answerOption[+]
    * valueCoding = $CS_QN_Village#Q21-9 "ไม่ทราบ"
* item[+]
  * linkId = "22"
  * text = "สถานที่จัดการมูลฝอยในชุมชน"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Village#Q22-0 "ไม่ทราบ"
  * answerOption[+]
    * valueCoding = $CS_QN_Village#Q22-1 "ไม่มี"
  * answerOption[+]
    * valueCoding = $CS_QN_Village#Q22-2 "มีสถานที่ฝังกลบ"
  * answerOption[+]
    * valueCoding = $CS_QN_Village#Q22-3 "มีสถานที่เผา"
  * answerOption[+]
    * valueCoding = $CS_QN_Village#Q22-4 "มีสถานที่รวบรวม คัดแยก และนำมูลฝอยไปใช้ประโยชน์"
  * answerOption[+]
    * valueCoding = $CS_QN_Village#Q22-5 "มีสถานที่รวบรวมมูลฝอยเพื่อนำไปกำจัดที่อื่น"
  * answerOption[+]
    * valueCoding = $CS_QN_Village#Q22-6 "มีสถานที่หมักทำปุ๋ย"
  * answerOption[+]
    * valueCoding = $CS_QN_Village#Q22-9 "กำจัดขยะด้วยวิธีอื่น"
* item[+]
  * linkId = "23"
  * text = "จำนวนโรงงานอุตสาหกรรม"
  * type = #integer
* item[+]
  * linkId = "24"
  * text = "จำนวนแหล่งอบายมุข"
  * type = #integer
* item[+]
  * linkId = "25"
  * text = "ประเภทของความเสี่ยงต่อภัยพิบัติ"
  * type = #string
* item[+]
  * linkId = "26"
  * text = "จำนวนชุมชนต่างด้าว"
  * type = #integer
* item[+]
  * linkId = "27"
  * text = "จำนวนชมรมออกกำลังกาย"
  * type = #integer
* item[+]
  * linkId = "28"
  * text = "จำนวนชมรมผู้สุงอายุ"
  * type = #integer
* item[+]
  * linkId = "29"
  * text = "จำนวนชมรมผู้พิการ"
  * type = #integer
* item[+]
  * linkId = "30"
  * text = "จำนวนชมรม To Be Number 1"
  * type = #integer