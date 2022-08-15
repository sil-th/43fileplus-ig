Instance: TH-dental
InstanceOf: Questionnaire
Title: "แบบสำรวจการตรวจสภาวะทันตสุขภาพของฟัน"
Description: "ใช้ประกอบการรายงานแฟ้ม DENTAL"
Usage: #example
* url = $QN_TH_Dental
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2022-01-01"
* code = $CS_THCC_QnType#DENTAL "แบบสำรวจการตรวจสภาวะทันตสุขภาพของฟัน ในแฟ้ม DENTAL"
* item[0]
  * linkId = "1"
  * text = "ประเภทผู้ได้รับบริการตรวจสภาวะทันตสุขภาพ"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #1
    * valueCoding.display = "กลุ่มหญิงตั้งครรภ์"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "กลุ่มเด็กก่อนวัยเรียน (อายุ 0-5 ปี)"
  * answerOption[+]
    * valueCoding.code = #3
    * valueCoding.display = "กลุ่มเด็กวัยเรียน (อายุ 6-12 ปี)"
  * answerOption[+]
    * valueCoding.code = #4
    * valueCoding.display = "กลุ่มผู้สูงอายุ (อายุ 60 ปีขึ้น ไป)"
  * answerOption[+]
    * valueCoding.code = #5
    * valueCoding.display = "กลุ่มอื่น ๆ (นอกเหนือจาก 4 กลุ่มแรก)"
* item[+]
  * linkId = "2"
  * text = "จำนวนฟันแท้ที่มีอยู่ (ซี่)"
  * type = #integer
* item[+]
  * linkId = "3"
  * text = "จำนวนฟันแท้ผุที่ไม่ได้อุด (ซี่)"
  * type = #integer
* item[+]
  * linkId = "4"
  * text = "จำนวนฟันแท้ที่ได้รับการอุด (ซี่)"
  * type = #integer
* item[+]
  * linkId = "5"
  * text = "จำนวนฟันแท้ที่ถอนหรือหลุด (ซี่)"
  * type = #integer
* item[+]
  * linkId = "6"
  * text = "จำนวนฟันน้ำนมที่มีอยู่ (ซี่)"
  * type = #integer
* item[+]
  * linkId = "7"
  * text = "จำนวนฟันน้ำนมผุที่ไม่ได้อุด (ซี่)"
  * type = #integer
* item[+]
  * linkId = "8"
  * text = "จำนวนฟันน้ำนมที่ได้รับการอุด (ซี่)"
  * type = #integer
* item[+]
  * linkId = "9"
  * text = "จำนวนฟันน้ำนมที่ถอนหรือหลุด (ซี่)"
  * type = #integer
* item[+]
  * linkId = "10"
  * text = "จำเป็นต้องทา/เคลือบฟลูออไรด์"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #1
    * valueCoding.display = "ต้องทา/เคลือบฟูลออไรด์"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "ไม่ต้องทา/เคลือบฟูลออไรด์"
* item[+]
  * linkId = "11"
  * text = "จำเป็นต้องขูดหินน้ำลาย"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #1
    * valueCoding.display = "ต้องขูดหินน้ำลาย"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "ไม่ต้องขูดหินน้ำลาย"
* item[+]
  * linkId = "12"
  * text = "จำนวนฟันที่ต้องเคลือบหลุมร่องฟัน"
  * type = #integer
* item[+]
  * linkId = "13"
  * text = "จำนวนฟันแท้ที่ต้องอุด"
  * type = #integer
* item[+]
  * linkId = "14"
  * text = "จำนวนฟันน้ำนมที่ต้องอุด"
  * type = #integer
* item[+]
  * linkId = "15"
  * text = "จำนวนฟันแท้ที่ต้องถอน/รักษาคลองรากฟัน"
  * type = #integer
* item[+]
  * linkId = "16"
  * text = "จำนวนฟันน้ำนมที่ต้องถอน/รักษาคลองรากฟัน"
  * type = #integer
* item[+]
  * linkId = "17"
  * text = "จำเป็นต้องใส่ฟันเทียม"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #1
    * valueCoding.display = "ต้องใส่ฟันเทียมบนและล่าง"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "ต้องใส่ฟันเทียมบน"
  * answerOption[+]
    * valueCoding.code = #3
    * valueCoding.display = "ต้องใส่ฟันเทียมล่าง"
  * answerOption[+]
    * valueCoding.code = #4
    * valueCoding.display = "ไม่ต้องใส่ฟันเทียม"
* item[+]
  * linkId = "18"
  * text = "จำนวนคู่สบฟันแท้กับฟันแท้"
  * type = #integer
* item[+]
  * linkId = "19"
  * text = "จำนวนคู่สบฟันแท้กับฟันเทียม"
  * type = #integer
* item[+]
  * linkId = "20"
  * text = "จำนวนคู่สบฟันเทียมกับฟันเทียม"
  * type = #integer
* item[+]
  * linkId = "21"
  * text = "สภาวะปริทันต์ในภาพรวม"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #0
    * valueCoding.display = "ปกติ"
  * answerOption[+]
    * valueCoding.code = #1
    * valueCoding.display = "เหงือกอักเสบ"
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "มีหินน้ำลายชัดเจน"
  * answerOption[+]
    * valueCoding.code = #3
    * valueCoding.display = "ปริทันต์อักเสบหรือมีฟันโยก"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "ไม่มีฟันหรือตรวจไม่ได้"
* item[+]
  * linkId = "22"
  * text = "สถานศึกษา"
  * type = #choice
  * answerOption[0]
    * valueCoding.code = #1
    * valueCoding.display = "ศพด."
  * answerOption[+]
    * valueCoding.code = #2
    * valueCoding.display = "ประถมศึกษารัฐบาล"
  * answerOption[+]
    * valueCoding.code = #3
    * valueCoding.display = "ประถมศึกษาเทศบาล"
  * answerOption[+]
    * valueCoding.code = #4
    * valueCoding.display = "ประถมศึกษาท้องถิ่น"
  * answerOption[+]
    * valueCoding.code = #5
    * valueCoding.display = "ประถมศึกษาเอกชน"
  * answerOption[+]
    * valueCoding.code = #6
    * valueCoding.display = "มัธยมศึกษารัฐบาล"
  * answerOption[+]
    * valueCoding.code = #7
    * valueCoding.display = "มัธยมศึกษาเทศบาล"
  * answerOption[+]
    * valueCoding.code = #8
    * valueCoding.display = "มัธยมศึกษาท้องถิ่น"
  * answerOption[+]
    * valueCoding.code = #9
    * valueCoding.display = "มัธยมศึกษาเอกชน"
* item[+]
  * linkId = "23"
  * text = "ระดับการศึกษา"
  * type = #integer