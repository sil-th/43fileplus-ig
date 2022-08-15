Instance: File19Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 19: SURVEILLANCE"
Description: "ข้อมูลผู้ป่วยด้วยโรคที่ต้องเฝ้าระวังที่มารับบริการ ประกอบด้วย Patient, Encounter และ Condition resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File19Composition"
  * resource = File19Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/SurvEncounter1"
  * resource = SurvEncounter1
* entry[+]
  * fullUrl = "http://example.org/Condition/SurvCondition1"
  * resource = SurvCondition1
* entry[+]
  * fullUrl = "http://example.org/Condition/SurvCondition2"
  * resource = SurvCondition2
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File19Composition
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 19: SURVEILLANCE"
Description: "Composition ของแฟ้มที่ 19"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#19 "SURVEILLANCE"
* subject = Reference(Patient/Patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 19 SURVEILLANCE: ข้อมูลผู้ป่วยด้วยโรคที่ต้องเฝ้าระวังที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient4)
* section[+]
  * title = "การตรวจโรคเฝ้าระวัง"
  * entry[0] = Reference(Encounter/SurvEncounter1)
  * entry[+] = Reference(Condition/SurvCondition1)
  * entry[+] = Reference(Condition/SurvCondition2)