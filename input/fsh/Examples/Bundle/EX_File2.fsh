Instance: File2Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 2: ADDRESS"
Description: "ข้อมูลที่อยู่ของผู้ที่มารับบริการที่อาศัยอยู่นอกเขตรับผิดชอบ หรือประชาชนที่อาศัยในเขตรับผิดชอบแต่มีทะเบียนบ้านอยู่นอกเขตรับผิดชอบ ประกอบด้วย Patient resource เท่านั้น เนื่องจากใน Patient มีข้อมูลในส่วนนี้ครบถ้วนแล้ว"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File2Composition"
  * resource = File2Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient1"
  * resource = Patient1
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File2Composition
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 2: ADDRESS"
Description: "Composition ของแฟ้มที่ 2"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[1] = $CS_THCC_43fileType#2 "ADDRESS"
* subject = Reference(Patient/Patient1)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 2 ADDRESS: ข้อมูลที่อยู่ของผู้ที่มารับบริการที่อาศัยอยู่นอกเขตรับผิดชอบ หรือประชาชนที่อาศัยในเขตรับผิดชอบแต่มีทะเบียนบ้านอยู่นอกเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลที่อยู่"
  * entry[0] = Reference(Patient/Patient1)