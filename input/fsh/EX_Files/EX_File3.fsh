Instance: File3Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 3: DEATH"
Description: "ข้อมูลประวัติการเสียชีวิตของประชาชนทุกคนที่อาศัยในเขตรับผิดชอบ และผู้ป่วยที่มารับบริการ ประกอบด้วย Patient, Encounter และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File3Composition"
  * resource = File3Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient3"
  * resource = Patient3
* entry[+]
  * fullUrl = "http://example.org/Observation/CauseOfDeath1"
  * resource = CauseOfDeath1
* entry[+]
  * fullUrl = "http://example.org/Observation/CauseOfDeath2"
  * resource = CauseOfDeath2
* entry[+]
  * fullUrl = "http://example.org/Encounter/DeathEncounter"
  * resource = DeathEncounter
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain
* entry[+]
  * fullUrl = "http://example.org/Practitioner/PractitionerDoctor1"
  * resource = PractitionerDoctor1


Instance: File3Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 3: DEATH"
Description: "Composition ของแฟ้มที่ 3"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#3 "DEATH"
* subject = Reference(Patient/Patient3)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* author[+] = Reference(Practitioner/PractitionerDoctor1)
  * insert GeneralReference($ID_LO_Provider, "XXXXX", "พญ. สมหญิง จริงใจ")
* title = "แฟ้มที่ 3 DEATH: ข้อมูลประวัติการเสียชีวิตของประชาชนทุกคนที่อาศัยในเขตรับผิดชอบ และผู้ป่วยที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้เสียชีวิต"
  * entry[0] = Reference(Patient/Patient3)
* section[+]
  * title = "สาเหตุการเสียชีิวิต"
  * entry[0] = Reference(Observation/CauseOfDeath1)
  * entry[+] = Reference(Observation/CauseOfDeath2)
* section[+]
  * title = "รายละเอียดเพ่ิมเติม"
  * entry[0] = Reference(Encounter/DeathEncounter)

