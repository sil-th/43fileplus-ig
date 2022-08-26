Instance: bundle-file08-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 8: DISABILITY"
Description: "ข้อมูลผู้พิการ ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ ประกอบด้วย Patient และ Condition resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-08"
  * resource = composition-file-08
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient3"
  * resource = patient-patient3
* entry[+]
  * fullUrl = "http://example.org/Condition/condition-disability1"
  * resource = condition-disability1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-08
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 8: DISABILITY"
Description: "Composition ของแฟ้มที่ 8"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#8 "DISABILITY"
* subject = Reference(Patient/patient-patient3)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 8 DISABILITY: ข้อมูลผู้พิการ ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient3)
* section[+]
  * title = "ประวัติความพิการ"
  * entry[0] = Reference(Condition/condition-disability1)
