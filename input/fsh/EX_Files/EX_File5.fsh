Instance: File5Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 5: CARD"
Description: "ข้อมูลประวัติการมีหลักประกันสุขภาพของประชาชนทุกคนที่อาศัยในเขตรับผิดชอบ และผู้ป่วยที่มารับบริการ ประกอบด้วย Patient และ Coverage resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File5Composition"
  * resource = File5Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/Coverage/CoverageUC"
  * resource = CoverageUC
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain

Instance: File5Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 5: CARD"
Description: "Composition ของแฟ้มที่ 5"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#5 "CARD"
* subject = Reference(Patient/Patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 5 CARD: ข้อมูลประวัติการมีหลักประกันสุขภาพของประชาชนทุกคนที่อาศัยในเขตรับผิดชอบ และผู้ป่วยที่มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient4)
* section[+]
  * title = "สิทธิการรักษา"
  * entry[0] = Reference(Coverage/CoverageUC)