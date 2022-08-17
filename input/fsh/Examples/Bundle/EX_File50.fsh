Instance: bundle-file50-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 50: REFER_RESULT"
Description: "ข้อมูลผลการ \"ตอบรับ\" การส่งต่อ/ส่งกลับ ผู้ป่วย ประกอบด้วย Patient, Encounter, QuestionnaireResponse และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-50"
  * resource = composition-file-50
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4

* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-homevisit1"
  * resource = encounter-homevisit1
* entry[+]
  * fullUrl = "http://example.org/QuestionnaireResponse/questionnaireresponse-village1"
  * resource = questionnaireresponse-village1
* entry[+]
  * fullUrl = "http://example.org/Appointment/appointment-homevisit1"
  * resource = appointment-homevisit1

* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-50
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 50: REFER_RESULT"
Description: "Composition ของแฟ้มที่ 50"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#50 "REFER_RESULT"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 50 REFER_RESULT: ข้อมูลผลการ \"ตอบรับ\" การส่งต่อ/ส่งกลับ ผู้ป่วย"
* section[0]
  * title = "ข้อมูลผู้รับบริการ"
  * entry[0] = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* section[+]
  * title = "ข้อมูลบริการ"
  * entry[0] = Reference(Encounter/encounter-homevisit1)
  * entry[+] = Reference(QuestionnaireResponse/questionnaireresponse-village1)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/appointment-homevisit1)

