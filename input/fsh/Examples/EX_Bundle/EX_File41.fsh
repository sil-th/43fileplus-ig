Instance: bundle-file41-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 41: SPECIALPP"
Description: "ข้อมูลการให้บริการส่งเสริมสุขภาพป้องกันโรคเฉพาะสำหรับผู้ที่มารับบริการ ประกอบด้วย Patient, Encounter และ Immunization resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-41"
  * resource = composition-file-41
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-specialpp1"
  * resource = encounter-specialpp1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-specialpp1"
  * resource = observation-specialpp1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-41
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 41: SPECIALPP"
Description: "Composition ของแฟ้มที่ 41"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#41 "SPECIALPP"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 41 SPECIALPP: ข้อมูลการให้บริการส่งเสริมสุขภาพป้องกันโรคเฉพาะสำหรับผู้ที่มารับบริการ"
* section[0]
  * title = "ข้อมูลทารก"
  * entry[0] = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/encounter-specialpp1)
  * entry[+] = Reference(Observation/observation-specialpp1)


