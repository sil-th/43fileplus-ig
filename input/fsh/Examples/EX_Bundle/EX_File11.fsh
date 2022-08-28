Instance: bundle-file11-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 11: DRUGALLERGY"
Description: "ข้อมูลประวัติการแพ้ของผู้ป่วยที่มารับบริการ โดยสามารถบันทึกสิ่งที่ก่อให้เกิดการแพ้ที่ไม่ใช่ยาได้ (เช่น ฝุ่น ไข่ นม ถั่ว) ประกอบด้วย Patient และ AllergyIntolerance resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-11"
  * resource = composition-file-11
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/AllergyIntolerance/allergyintolerance-patient4"
  * resource = allergyintolerance-patient4
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main

Instance: composition-file-11
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 11: DRUGALLERGY"
Description: "Composition ของแฟ้มที่ 11"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#11 "DRUGALLERGY"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 11 DRUGALLERGY: ข้อมูลประวัติการแพ้ของผู้ป่วยที่มารับบริการ โดยสามารถบันทึกสิ่งที่ก่อให้เกิดการแพ้ที่ไม่ใช่ยาได้ (เช่น ฝุ่น ไข่ นม ถั่ว)"
* section[0]
  * title = "ข้อมูลหญิงวัยเจริญพันธุ์"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "ประวัติการแพ้"
  * entry[0] = Reference(AllergyIntolerance/allergyintolerance-patient4)