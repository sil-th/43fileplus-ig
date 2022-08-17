Instance: questionnaireresponse-homevisit1
InstanceOf: QuestionnaireResponse
Title: "ตัวอย่าง QuestionnaireResponse: การตอบแบบบันทึกสุขภาพ การให้บริการในชุมชน"
Description: "ใช้ประกอบการรายงานแฟ้ม COMMUNITY_SERVICE"
Usage: #example
* questionnaire = $QN_TH_HomeVisit
* status = #completed
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-homevisit1)
* authored = "2022-02-19T14:15:00+07:00"
* author = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* item[0]
  * linkId = "1"
  * text = "สภาพ/อาการ ของผู้ป่วยที่ไปเยี่ยม"
  * answer[0]
    * valueString = "อาการโดยรวมดี"
* item[+]
  * linkId = "2"
  * text = "การให้บริการดูแลรักษา หรือแนะนำด้านสุขภาพ"
  * answer[0]
    * valueString = "พูดคุยสอบถาม ให้คำแนะนำ"
* item[+]
  * linkId = "3"
  * text = "การประเมินผล"
  * answer[0]
    * valueString = "อาการโดยรวมดี"
* item[+]
  * linkId = "4"
  * text = "แผนการในอนาคตที่เกี่ยวกับการเยี่ยมและอื่น ๆ ที่เกี่ยวข้อง"
  * answer[0]
    * valueString = "ควบคุมระดับน้ำตาล"
