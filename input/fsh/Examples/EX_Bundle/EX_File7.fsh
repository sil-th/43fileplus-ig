Instance: bundle-file07-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 7: VILLAGE"
Description: "ข้อมูลทั่วไปและข้อมูลที่เกี่ยวข้องกับสุขภาพของชุมชนที่อยู่ในเขตรับผิดชอบ ประกอบด้วย Location และ Questionnaire resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-07"
  * resource = composition-file-07
* entry[+]
  * fullUrl = "http://example.org/Location/location-village1"
  * resource = location-village1
* entry[+]
  * fullUrl = "http://example.org/QuestionnaireResponse/questionnaireresponse-village1"
  * resource = questionnaireresponse-village1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main

Instance: composition-file-07
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 7: VILLAGE"
Description: "Composition ของแฟ้มที่ 7"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#7 "VILLAGE"
* subject = Reference(Location/location-village1)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 7 VILLAGE: ข้อมูลทั่วไปและข้อมูลที่เกี่ยวข้องกับสุขภาพของชุมชนที่อยู่ในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลชุมชน"
  * entry[0] = Reference(Location/location-village1)
* section[+]
  * title = "ข้อมูลที่เกี่ยวข้องกับสุขภาพ"
  * entry[0] = Reference(QuestionnaireResponse/questionnaireresponse-village1)