Instance: bundle-file01-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 1: PERSON"
Description: "ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ ประกอบด้วย Patient, RelatedPerson และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-01"
  * resource = composition-file-01
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient1"
  * resource = patient-patient1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-blood-group1"
  * resource = observation-blood-group1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-blood-group-abo1"
  * resource = observation-blood-group-abo1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-blood-group-rh1"
  * resource = observation-blood-group-rh1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-role-in-house1"
  * resource = observation-role-in-house1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-role-in-village1"
  * resource = observation-role-in-village1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-occupation1"
  * resource = observation-occupation1
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-chronic2"
  * resource = condition-chronic2
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-01
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 1: PERSON"
Description: "Composition ของแฟ้มที่ 1"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[1] = $CS_TH_FileList#1 "PERSON"
* subject = Reference(Patient/patient-patient1)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 1 PERSON: ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ"
* section[0]
  * title = "ข้อมูลทั่วไป"
  * entry[0] = Reference(Patient/patient-patient1)
* section[+]
  * title = "หมู่เลือด"
  * entry[0] = Reference(Observation/observation-blood-group1)
  * entry[+] = Reference(Observation/observation-blood-group-abo1)
  * entry[+] = Reference(Observation/observation-blood-group-rh1)
* section[+]
  * title = "ประวัติทางสังคม"
  * entry[0] = Reference(Observation/observation-role-in-house1)
  * entry[+] = Reference(Observation/observation-role-in-village1)
  * entry[+] = Reference(Observation/observation-occupation1)
* section[+]
  * title = "โรคประจำตัว"
  * entry[0] = Reference(Condition/condition-chronic2)

