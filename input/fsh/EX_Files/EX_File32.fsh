Instance: File32Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 32: FP"
Description: "ข้อมูลการให้บริการวางแผนครอบครัวกับผู้ที่มารับบริการ ประกอบด้วย Patient, Encounter และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File32Composition"
  * resource = File32Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient6"
  * resource = Patient6
* entry[+]
  * fullUrl = "http://example.org/Encounter/FPEncounter1"
  * resource = FPEncounter1
* entry[+]
  * fullUrl = "http://example.org/Observation/ContraceptiveObs"
  * resource = ContraceptiveObs
* entry[+]
  * fullUrl = "http://example.org/Observation/PregnancyTest01"
  * resource = ContraceptiveObs
* entry[+]
  * fullUrl = "http://example.org/Appointment/FPAppointment"
  * resource = ANCAppointment
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File32Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 32: FP"
Description: "Composition ของแฟ้มที่ 32"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#32 "FP"
* subject = Reference(Patient/Patient6)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 32 FP: ข้อมูลการให้บริการวางแผนครอบครัวกับผู้ที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient6)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/FPEncounter1)
  * entry[+] = Reference(Observation/ContraceptiveObs)
  * entry[+] = Reference(Observation/PregnancyTest01)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/FPAppointment)