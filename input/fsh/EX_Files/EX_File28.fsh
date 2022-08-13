Instance: File28Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 28: APPOINTMENT"
Description: "ข้อมูลการนัดมารับบริการครั้งต่อไปของผู้ที่มารับบริการ ประกอบด้วย Patient, Encounter และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File28Composition"
  * resource = File28Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/OpdEncounter1"
  * resource = OpdEncounter1
* entry[+]
  * fullUrl = "http://example.org/Appointment/OpdAppointment"
  * resource = OpdAppointment
* entry[+]
  * fullUrl = "http://example.org/Coverage/CoverageUC"
  * resource = CoverageUC
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File28Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 28: APPOINTMENT"
Description: "Composition ของแฟ้มที่ 28"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#28 "APPOINTMENT"
* subject = Reference(Patient/Patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 28 APPOINTMENT: ข้อมูลการนัดมารับบริการครั้งต่อไปของผู้ที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient4)
* section[+]
  * title = "ข้อมูลการรักษาในโรงพยาบาล"
  * entry[0] = Reference(Encounter/OpdEncounter1)
  * entry[+] = Reference(Appointment/OpdAppointment)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Coverage/CoverageUC)