Instance: bundle-file83-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 83: PERSON_DRUG"
Description: "ข้อมูลยาประจำตัว, อาหารเสริม, สมุนไพร ที่ผู้ป่วยซื้อ-จัดหารับประทานเอง ที่ยังรับประทานอยู่ในช่วง 1 เดือนที่ผ่านมา  ประกอบด้วย Patient และ MedicationStatement resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-83"
  * resource = composition-file-83
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient1"
  * resource = patient-patient1
* entry[+]
  * fullUrl = "http://example.org/MedicationStatement/medicationstatement-selfmed"
  * resource = medicationstatement-selfmed
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-83
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 83: PERSON_DRUG"
Description: "Composition ของแฟ้มที่ 83"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#83 "PERSON_DRUG"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 83 PERSON_DRUG: ข้อมูลยาประจำตัว, อาหารเสริม, สมุนไพร ที่ผู้ป่วยซื้อ-จัดหารับประทานเอง ที่ยังรับประทานอยู่ในช่วง 1 เดือนที่ผ่านมา"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
  * title = "ข้อมูลยาที่ใช้"
  * entry[0] = Reference(MedicationStatement/medicationstatement-selfmed)
