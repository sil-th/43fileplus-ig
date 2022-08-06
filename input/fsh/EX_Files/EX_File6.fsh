Instance: File6Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 6: HOME"
Description: "ข้อมูลที่ตั้งและสุขาภิบาลของหลังคาเรือนในเขตรับผิดชอบ ประกอบด้วย Patient, Encounter, EpisodeOfCare และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File6Composition"
  * resource = File6Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient1"
  * resource = Patient1
* entry[+]
  * fullUrl = "http://example.org/Location/Patient1Home"
  * resource = Patient1Home
* entry[+]
  * fullUrl = "http://example.org/QuestionnaireResponse/QnHomeAnswer"
  * resource = QnHomeAnswer
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain

Instance: File6Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 6: HOME"
Description: "Composition ของแฟ้มที่ 6"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#5 "HOME"
* subject = Reference(Patient/Patient1)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 6 HOME: ข้อมูลที่ตั้งและสุขาภิบาลของหลังคาเรือนในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลบ้าน"
  * entry[0] = Reference(Location/Patient1Home)
* section[+]
  * title = "ข้อมูลสุขาภิบาล"
  * entry[0] = Reference(QuestionnaireResponse/QnHomeAnswer)