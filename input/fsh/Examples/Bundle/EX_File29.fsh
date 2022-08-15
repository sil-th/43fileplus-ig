Instance: bundle-file29-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 29: DENTAL"
Description: "ข้อมูลการตรวจสภาวะทันตสุขภาพของฟัน ประกอบด้วย Patient, Practitioner, Encounter และ Questionnaire resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-29"
  * resource = composition-file-29
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient5"
  * resource = patient-patient5
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-dental1"
  * resource = encounter-dental1
* entry[+]
  * fullUrl = "http://example.org/Practitioner/practitioner-dentist1"
  * resource = practitioner-dentist1
* entry[+]
  * fullUrl = "http://example.org/QuestionnaireResponse/questionnaireresponse-dental1"
  * resource = questionnaireresponse-dental1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-29
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 29: APPOINTMENT"
Description: "Composition ของแฟ้มที่ 29"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#29 "DENTAL"
* subject = Reference(Patient/patient-patient5)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 29 DENTAL: ข้อมูลการตรวจสภาวะทันตสุขภาพของฟัน"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient5)
* section[+]
  * title = "ข้อมูลการรักษา"
  * entry[0] = Reference(Encounter/encounter-dental1)
  * entry[+] = Reference(Practitioner/practitioner-dentist1)
* section[+]
  * title = "ข้อมูลการสำรวจทางทันตกรรม"
  * entry[0] = Reference(QuestionnaireResponse/questionnaireresponse-dental1)