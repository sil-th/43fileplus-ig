Instance: File5Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 5: CARD"
Description: "ข้อมูลประวัติการมีหลักประกันสุขภาพของประชาชนทุกคนที่อาศัยในเขตรับผิดชอบ และผู้ป่วยที่มารับบริการ ประกอบด้วย Patient, Encounter, EpisodeOfCare และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* entry[0]
  * fullUrl = "http://example.org/fhir/file-5-composition"
  * resource = File5Composition
* entry[+]
  * fullUrl = "http://example.org/fhir/patient-4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/fhir/coverage-uc"
  * resource = CoverageUC


Instance: File5Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 5: CARD"
Description: "Composition ของแฟ้มที่ 5"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#5 "CARD"
* subject = Reference(Patient1)
* date = "2022-07-29T12:30:02+07:00"
* author = Reference(OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* author = Reference(PractitionerDoctor1)
  * insert GeneralReference($ID_LO_Provider, "XXXXX", "พญ. สมหญิง จริงใจ")
* title = "แฟ้มที่ 5 CARD: ข้อมูลประวัติการมีหลักประกันสุขภาพของประชาชนทุกคนที่อาศัยในเขตรับผิดชอบ และผู้ป่วยที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient4)
* section[+]
  * title = "สิทธิการรักษา"
  * entry[0] = Reference(CoverageUC)