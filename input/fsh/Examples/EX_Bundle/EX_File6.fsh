Instance: bundle-file06-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 6: HOME"
Description: "ข้อมูลที่ตั้งและสุขาภิบาลของหลังคาเรือนในเขตรับผิดชอบ ประกอบด้วย Location และ Questionnaire resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-06"
  * resource = composition-file-06
* entry[+]
  * fullUrl = "http://example.org/Location/location-patient1-home1"
  * resource = location-patient1-home1
* entry[+]
  * fullUrl = "http://example.org/QuestionnaireResponse/questionnaireresponse-home1"
  * resource = questionnaireresponse-home1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main

Instance: composition-file-06
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 6: HOME"
Description: "Composition ของแฟ้มที่ 6"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#6 "HOME"
* subject = Reference(Location/location-patient1-home1)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 6 HOME: ข้อมูลที่ตั้งและสุขาภิบาลของหลังคาเรือนในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลบ้าน"
  * entry[0] = Reference(Location/location-patient1-home1)
* section[+]
  * title = "ข้อมูลสุขาภิบาล"
  * entry[0] = Reference(QuestionnaireResponse/questionnaireresponse-home1)