Instance: bundle-file32-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 32: FP"
Description: "ข้อมูลการให้บริการวางแผนครอบครัวกับผู้ที่มารับบริการ ประกอบด้วย Patient, Encounter และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-32"
  * resource = composition-file-32
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient6"
  * resource = patient-patient6
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-fp"
  * resource = encounter-fp
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-fp-contraception1"
  * resource = observation-fp-contraception1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-fp-preg-test1"
  * resource = observation-fp-preg-test1
* entry[+]
  * fullUrl = "http://example.org/Appointment/appointment-fp"
  * resource = appointment-fp
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-32
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 32: FP"
Description: "Composition ของแฟ้มที่ 32"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#32 "FP"
* subject = Reference(Patient/patient-patient6)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 32 FP: ข้อมูลการให้บริการวางแผนครอบครัวกับผู้ที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient6)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/encounter-fp)
  * entry[+] = Reference(Observation/observation-fp-contraception1)
  * entry[+] = Reference(Observation/observation-fp-preg-test1)
* section[+]
  * title = "ข้อมูลการนัด"
  * entry[0] = Reference(Appointment/appointment-fp)