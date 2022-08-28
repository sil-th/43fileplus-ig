Instance: bundle-file28-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 28: APPOINTMENT"
Description: "ข้อมูลการนัดมารับบริการครั้งต่อไปของผู้ที่มารับบริการ ประกอบด้วย Patient, Encounter และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-28"
  * resource = composition-file-28
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-opd1"
  * resource = encounter-opd1
* entry[+]
  * fullUrl = "http://example.org/Appointment/appointment-opd1"
  * resource = appointment-opd1
* entry[+]
  * fullUrl = "http://example.org/Coverage/coverage-uc"
  * resource = coverage-uc
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-28
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 28: APPOINTMENT"
Description: "Composition ของแฟ้มที่ 28"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#28 "APPOINTMENT"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 28 APPOINTMENT: ข้อมูลการนัดมารับบริการครั้งต่อไปของผู้ที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "ข้อมูลการรักษาในโรงพยาบาล"
  * entry[0] = Reference(Encounter/encounter-opd1)
  * entry[+] = Reference(Appointment/appointment-opd1)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Coverage/coverage-uc)