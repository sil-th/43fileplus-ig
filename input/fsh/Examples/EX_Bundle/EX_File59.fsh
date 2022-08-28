Instance: bundle-file59-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 59: LEAVE_DAY"
Description: "ข้อมูลกรณีที่ผู้ป่วยมีการลากลับบ้าน (Leave day) ประกอบด้วย Patient และ Encounter resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-59"
  * resource = composition-file-59
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-ipd2"
  * resource = encounter-ipd2
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-59
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 59: LEAVE_DAY"
Description: "Composition ของแฟ้มที่ 59"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#59 "LEAVE_DAY"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 59 LEAVE_DAY: ข้อมูลกรณีที่ผู้ป่วยมีการลากลับบ้าน (Leave day)"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* section[+]
  * title = "ข้อมูลการรับบริการ"
  * entry[0] = Reference(Encounter/encounter-ipd2)