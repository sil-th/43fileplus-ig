Instance: bundle-file19-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 19: SURVEILLANCE"
Description: "ข้อมูลผู้ป่วยด้วยโรคที่ต้องเฝ้าระวังที่มารับบริการ ประกอบด้วย Patient, Encounter และ Condition resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-19"
  * resource = composition-file-19
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-surveillance1"
  * resource = encounter-surveillance1
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-surveillance1"
  * resource = condition-surveillance1
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-surveillance2"
  * resource = condition-surveillance2
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-19
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 19: SURVEILLANCE"
Description: "Composition ของแฟ้มที่ 19"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#19 "SURVEILLANCE"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 19 SURVEILLANCE: ข้อมูลผู้ป่วยด้วยโรคที่ต้องเฝ้าระวังที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "การตรวจโรคเฝ้าระวัง"
  * entry[0] = Reference(Encounter/encounter-surveillance1)
  * entry[+] = Reference(Condition/condition-surveillance1)
  * entry[+] = Reference(Condition/condition-surveillance2)