Instance: bundle-file05-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 5: CARD"
Description: "ข้อมูลประวัติการมีหลักประกันสุขภาพของประชาชนทุกคนที่อาศัยในเขตรับผิดชอบ และผู้ป่วยที่มารับบริการ ประกอบด้วย Patient และ Coverage resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-05"
  * resource = composition-file-05
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Coverage/coverage-uc"
  * resource = coverage-uc
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main

Instance: composition-file-05
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 5: CARD"
Description: "Composition ของแฟ้มที่ 5"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#5 "CARD"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 5 CARD: ข้อมูลประวัติการมีหลักประกันสุขภาพของประชาชนทุกคนที่อาศัยในเขตรับผิดชอบ และผู้ป่วยที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "สิทธิการรักษา"
  * entry[0] = Reference(Coverage/coverage-uc)