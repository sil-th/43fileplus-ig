Instance: QnDentalAnswer
InstanceOf: QuestionnaireResponse
Title: "การตอบแบบสำรวจการตรวจสภาวะทันตสุขภาพของฟันทุกซี่"
Description: "ใช้ประกอบการรายงานแฟ้ม DENTAL"
Usage: #example
* questionnaire = $QN_TH_Dental
* status = #completed
* subject = Reference(Patient/Patient5)
* subject.type = "Patient"
* authored = "2022-02-19T14:15:00+07:00"
* author = Reference(Practitioner/PractitionerDentist1)
* author.type = "Practitioner"
* item[0]
  * linkId = "1"
  * text = "ประเภทผู้ได้รับบริการตรวจสภาวะทันตสุขภาพ"
  * answer[0]
    * valueCoding.code = #3
    * valueCoding.display = "กลุ่มเด็กวัยเรียน (อายุ 6-12 ปี)"
* item[+]
  * linkId = "2"
  * text = "จำนวนฟันแท้ที่มีอยู่ (ซี่)"
  * answer[0]
    * valueInteger = 32
* item[+]
  * linkId = "3"
  * text = "จำนวนฟันแท้ผุที่ไม่ได้อุด (ซี่)"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "4"
  * text = "จำนวนฟันแท้ที่ได้รับการอุด (ซี่)"
  * answer[0]
    * valueInteger = 5
* item[+]
  * linkId = "5"
  * text = "จำนวนฟันแท้ที่ถอนหรือหลุด (ซี่)"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "6"
  * text = "จำนวนฟันน้ำนมที่มีอยู่ (ซี่)"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "7"
  * text = "จำนวนฟันน้ำนมผุที่ไม่ได้อุด (ซี่)"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "8"
  * text = "จำนวนฟันน้ำนมที่ได้รับการอุด (ซี่)"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "9"
  * text = "จำนวนฟันน้ำนมที่ถอนหรือหลุด (ซี่)"
  * answer[0]
    * valueInteger = 20
* item[+]
  * linkId = "10"
  * text = "จำเป็นต้องทา/เคลือบฟลูออไรด์"
  * answer[0]
    * valueCoding.code = #2
    * valueCoding.display = "ไม่ต้องทา/เคลือบฟูลออไรด์"
* item[+]
  * linkId = "11"
  * text = "จำเป็นต้องขูดหินน้ำลาย"
  * answer[0]
    * valueCoding.code = #2
    * valueCoding.display = "ไม่ต้องขูดหินน้ำลาย"
* item[+]
  * linkId = "12"
  * text = "จำนวนฟันที่ต้องเคลือบหลุมร่องฟัน"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "13"
  * text = "จำนวนฟันแท้ที่ต้องอุด"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "14"
  * text = "จำนวนฟันน้ำนมที่ต้องอุด"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "15"
  * text = "จำนวนฟันแท้ที่ต้องถอน/รักษาคลองรากฟัน"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "16"
  * text = "จำนวนฟันน้ำนมที่ต้องถอน/รักษาคลองรากฟัน"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "17"
  * text = "จำเป็นต้องใส่ฟันเทียม"
  * answer[0]
    * valueCoding.code = #4
    * valueCoding.display = "ไม่ต้องใส่ฟันเทียม"
* item[+]
  * linkId = "18"
  * text = "จำนวนคู่สบฟันแท้กับฟันแท้"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "19"
  * text = "จำนวนคู่สบฟันแท้กับฟันเทียม"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "20"
  * text = "จำนวนคู่สบฟันเทียมกับฟันเทียม"
  * answer[0]
    * valueInteger = 0
* item[+]
  * linkId = "21"
  * text = "สภาวะปริทันต์ในภาพรวม"
  * answer[0]
    * valueCoding.code = #0
    * valueCoding.display = "ปกติ"
* item[+]
  * linkId = "22"
  * text = "สถานศึกษา"
  * answer[0]
    * valueCoding.code = #6
    * valueCoding.display = "มัธยมศึกษารัฐบาล"
* item[+]
  * linkId = "23"
  * text = "ระดับการศึกษา"
  * answer[0]
    * valueInteger = 6