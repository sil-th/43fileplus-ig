Instance: bundle-file39-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 39: EPI"
Description: "ข้อมูลการให้บริการวัคซีนกับผู้ที่มารับบริการ และประชาชนกลุ่มเป้าหมายของการฉีดวัคซีนในเขตรับผิดชอบ ประกอบด้วย Patient, Encounter และ Immunization resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-39"
  * resource = composition-file-39
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient7"
  * resource = patient-patient7
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-vaccine1"
  * resource = encounter-vaccine1
* entry[+]
  * fullUrl = "http://example.org/Immunization/immunization-baby1"
  * resource = immunization-baby1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-39
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 39: EPI"
Description: "Composition ของแฟ้มที่ 39"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#39 "EPI"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 39 EPI: ข้อมูลการให้บริการวัคซีนกับผู้ที่มารับบริการ และประชาชนกลุ่มเป้าหมายของการฉีดวัคซีนในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลทารก"
  * entry[0] = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/encounter-vaccine1)
* section[+]
  * title = "ข้อมูลการฉีดวัคซีน"
  * entry[0] = Reference(Immunization/immunization-baby1)


