Instance: File29Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 29: DENTAL"
Description: "ข้อมูลการตรวจสภาวะทันตสุขภาพของฟัน ประกอบด้วย Patient, Practitioner, Encounter และ Questionnaire resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File29Composition"
  * resource = File29Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient5"
  * resource = Patient5
* entry[+]
  * fullUrl = "http://example.org/Encounter/DentalEncounter1"
  * resource = DentalEncounter1
* entry[+]
  * fullUrl = "http://example.org/Practitioner/PractitionerDentist1"
  * resource = PractitionerDentist1
* entry[+]
  * fullUrl = "http://example.org/QuestionnaireResponse/QnDentalAnswer"
  * resource = QnDentalAnswer
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File29Composition
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 29: APPOINTMENT"
Description: "Composition ของแฟ้มที่ 29"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#29 "DENTAL"
* subject = Reference(Patient/Patient5)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 29 DENTAL: ข้อมูลการตรวจสภาวะทันตสุขภาพของฟัน"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient5)
* section[+]
  * title = "ข้อมูลการรักษา"
  * entry[0] = Reference(Encounter/DentalEncounter1)
  * entry[+] = Reference(Practitioner/PractitionerDentist1)
* section[+]
  * title = "ข้อมูลการสำรวจทางทันตกรรม"
  * entry[0] = Reference(QuestionnaireResponse/QnDentalAnswer)