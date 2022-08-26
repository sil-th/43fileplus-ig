Instance: questionnaire-dental
InstanceOf: Questionnaire
Title: "ตัวอย่าง Questionnaire: แบบสำรวจการตรวจสภาวะทันตสุขภาพของฟัน"
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
    * valueCoding = $CS_QN_Dental#Q01-1 "กลุ่มหญิงตั้งครรภ์"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q01-2 "กลุ่มเด็กก่อนวัยเรียน (อายุ 0-5 ปี)"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q01-3 "กลุ่มเด็กวัยเรียน (อายุ 6-12 ปี)"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q01-4 "กลุ่มผู้สูงอายุ (อายุ 60 ปีขึ้น ไป)"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q01-5 "กลุ่มอื่น ๆ (นอกเหนือจาก 4 กลุ่มแรก)"
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
    * valueCoding = $CS_QN_Dental#Q10-1 "ต้องทา/เคลือบฟูลออไรด์"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q10-2 "ไม่ต้องทา/เคลือบฟูลออไรด์"
* item[+]
  * linkId = "11"
  * text = "จำเป็นต้องขูดหินน้ำลาย"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Dental#Q11-1 "ต้องขูดหินน้ำลาย"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q11-2 "ไม่ต้องขูดหินน้ำลาย"
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
    * valueCoding = $CS_QN_Dental#Q17-1 "ต้องใส่ฟันเทียมบนและล่าง"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q17-2 "ต้องใส่ฟันเทียมบน"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q17-3 "ต้องใส่ฟันเทียมล่าง"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q17-4 "ไม่ต้องใส่ฟันเทียม"
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
    * valueCoding = $CS_QN_Dental#Q21-0 "ปกติ"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q21-1 "เหงือกอักเสบ"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q21-2 "มีหินน้ำลายชัดเจน"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q21-3 "ปริทันต์อักเสบหรือมีฟันโยก"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q21-9 "ไม่มีฟันหรือตรวจไม่ได้"
* item[+]
  * linkId = "22"
  * text = "สถานศึกษา"
  * type = #choice
  * answerOption[0]
    * valueCoding = $CS_QN_Dental#Q22-1 "ศพด."
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q22-2 "ประถมศึกษารัฐบาล"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q22-3 "ประถมศึกษาเทศบาล"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q22-4 "ประถมศึกษาท้องถิ่น"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q22-5 "ประถมศึกษาเอกชน"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q22-6 "มัธยมศึกษารัฐบาล"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q22-7 "มัธยมศึกษาเทศบาล"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q22-8 "มัธยมศึกษาท้องถิ่น"
  * answerOption[+]
    * valueCoding = $CS_QN_Dental#Q22-9 "มัธยมศึกษาเอกชน"
* item[+]
  * linkId = "23"
  * text = "ระดับการศึกษา"
  * type = #integer