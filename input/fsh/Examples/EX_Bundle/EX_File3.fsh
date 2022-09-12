Instance: bundle-file03-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 3: DEATH"
Description: "ข้อมูลประวัติการเสียชีวิตของประชาชนทุกคนที่อาศัยในเขตรับผิดชอบ และผู้ป่วยที่มารับบริการ ประกอบด้วย Patient, Encounter และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-03"
  * resource = composition-file-03
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient3"
  * resource = patient-patient3
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-cause-of-death1"
  * resource = condition-cause-of-death1
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-cause-of-death2"
  * resource = condition-cause-of-death2
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-death1"
  * resource = encounter-death1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-death-location"
  * resource = observation-death-location
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-death-pregnancy"
  * resource = observation-death-pregnancy
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main
* entry[+]
  * fullUrl = "http://example.org/Practitioner/practitioner-doctor1"
  * resource = practitioner-doctor1


Instance: composition-file-03
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 3: DEATH"
Description: "Composition ของแฟ้มที่ 3"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#3 "DEATH"
* subject = Reference(Patient/patient-patient3)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* author[+] = Reference(Practitioner/practitioner-doctor1)
  * insert GeneralReference($ID_LO_Provider, "XXXXX", "พญ. สมหญิง จริงใจ")
* title = "แฟ้มที่ 3 DEATH: ข้อมูลประวัติการเสียชีวิตของประชาชนทุกคนที่อาศัยในเขตรับผิดชอบ และผู้ป่วยที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้เสียชีวิต"
  * entry[0] = Reference(Patient/patient-patient3)
* section[+]
  * title = "สาเหตุการเสียชีิวิต"
  * entry[0] = Reference(Condition/condition-cause-of-death1)
  * entry[+] = Reference(Condition/condition-cause-of-death2)
* section[+]
  * title = "รายละเอียดเพ่ิมเติม"
  * entry[0] = Reference(Encounter/encounter-death1)
  * entry[+] = Reference(Observation/observation-death-location)
  * entry[+] = Reference(Observation/observation-death-pregnancy)
