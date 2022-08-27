Instance: questionnaire-home-visit
InstanceOf: Questionnaire
Title: "ตัวอย่าง Questionnaire: แบบบันทึกสุขภาพ การให้บริการในชุมชน"
Description: "ใช้ประกอบการรายงานแฟ้ม COMMUNITY_SERVICE"
Usage: #example
* url = $QN_TH_HomeVisit
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2022-01-01"
* code = $CS_THCC_QnType#HOMEVIST "แบบบันทึกสุขภาพ การให้บริการในชุมชน ในแฟ้ม COMMUNITY_SERVICE"
* item[0]
  * linkId = "1"
  * text = "สภาพ/อาการ ของผู้ป่วยที่ไปเยี่ยม"
  * type = #string
* item[+]
  * linkId = "2"
  * text = "การให้บริการดูแลรักษา หรือแนะนำด้านสุขภาพ"
  * type = #string
* item[+]
  * linkId = "3"
  * text = "การประเมินผล"
  * type = #string
* item[+]
  * linkId = "4"
  * text = "แผนการในอนาคตที่เกี่ยวกับการเยี่ยมและอื่น ๆ ที่เกี่ยวข้อง"
  * type = #string
