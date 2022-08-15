Instance: File11Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 11: DRUGALLERGY"
Description: "ข้อมูลประวัติการแพ้ของผู้ป่วยที่มารับบริการ โดยสามารถบันทึกสิ่งที่ก่อให้เกิดการแพ้ที่ไม่ใช่ยาได้ (เช่น ฝุ่น ไข่ นม ถั่ว) ประกอบด้วย Patient และ AllergyIntolerance resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File11Composition"
  * resource = File11Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/AllergyIntolerance/AllergyIntolerance1"
  * resource = AllergyIntolerance1
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain

Instance: File11Composition
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 11: DRUGALLERGY"
Description: "Composition ของแฟ้มที่ 11"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#11 "DRUGALLERGY"
* subject = Reference(Patient/Patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 11 DRUGALLERGY: ข้อมูลประวัติการแพ้ของผู้ป่วยที่มารับบริการ โดยสามารถบันทึกสิ่งที่ก่อให้เกิดการแพ้ที่ไม่ใช่ยาได้ (เช่น ฝุ่น ไข่ นม ถั่ว)"
* section[0]
  * title = "ข้อมูลหญิงวัยเจริญพันธุ์"
  * entry[0] = Reference(Patient/Patient4)
* section[+]
  * title = "ประวัติการแพ้"
  * entry[0] = Reference(AllergyIntolerance/AllergyIntolerance1)