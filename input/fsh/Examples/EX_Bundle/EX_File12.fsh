Instance: bundle-file12-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 12: FUNCTIONAL"
Description: "ข้อมูลการตรวจประเมินความบกพร่องทางสุขภาพ ประกอบด้วย Patien, Encounter และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-12"
  * resource = composition-file-12
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient3"
  * resource = patient-patient3
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-functional1"
  * resource = encounter-functional1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-functional-test1"
  * resource = observation-functional-test1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-functional-conclusion1"
  * resource = observation-functional-conclusion1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main

Instance: composition-file-12
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 12: FUNCTIONAL"
Description: "Composition ของแฟ้มที่ 12"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#12 "FUNCTIONAL"
* subject = Reference(Patient/patient-patient3)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 12 FUNCTIONAL: ข้อมูลการตรวจประเมินความบกพร่องทางสุขภาพ"
* section[0]
  * title = "ข้อมูลหญิงผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient3)
* section[+]
  * title = "การตรวจประเมินความบกพร่องทางสุขภาพ"
  * entry[0] = Reference(Encounter/encounter-functional1)
  * entry[+] = Reference(Observation/observation-functional-test1)
  * entry[+] = Reference(Observation/observation-functional-conclusion1)