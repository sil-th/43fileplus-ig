Instance: questionnaireresponse-refer-history1
InstanceOf: QuestionnaireResponse
Title: "ตัวอย่าง QuestionnaireResponse: ข้อมูลประวัติการส่งต่อผู้ป่วย (ทั้งกรณีส่งออก และรับเข้า)"
Description: "ใช้ประกอบการรายงานแฟ้ม REFER_HISTORY"
Usage: #example
* questionnaire = $QN_TH_ReferHistory
* status = #completed
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* subject.type = "Patient"
* authored = "2021-03-31T10:30:02+07:00"
* author = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* author.type = "Practitioner"
* item[0]
  * linkId = "1"
  * text = "ประวัติการป่วยในปัจจุบัน (ข้อความสรุป)"
  * answer[0]
    * valueString = "คำบรรยาย"
* item[+]
  * linkId = "2"
  * text = "ประวัติการป่วยในอดีตและครอบครัว (ข้อความ)"
  * answer[0]
    * valueString = "คำบรรยาย"
* item[+]
  * linkId = "3"
  * text = "ผลการตรวจชันสูตรจากห้องทดลอง (ข้อความสรุป)"
  * answer[0]
    * valueString = "คำบรรยาย"
* item[+]
  * linkId = "4"
  * text = "การตรวจวินิจฉัยโรคขั้นต้น (ข้อความสรุป)"
  * answer[0]
    * valueString = "คำบรรยาย"
* item[+]
  * linkId = "5"
  * text = "การรักษาที่ได้ให้ไว้แล้ว (ข้อความสรุป)"
  * answer[0]
    * valueString = "คำบรรยาย"
* item[+]
  * linkId = "6"
  * text = "สรุปผลการวินิจฉัยและรักษา (ข้อความ)"
  * answer[0]
    * valueString = "คำบรรยาย"
