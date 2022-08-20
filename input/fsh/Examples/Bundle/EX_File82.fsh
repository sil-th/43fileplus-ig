Instance: bundle-file82-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 82: PERSON_CONTACT"
Description: "ข้อมูลบุคคลอ้างอิง ประกอบด้วย Patient และ RelatedPerson resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-82"
  * resource = composition-file-82
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient1"
  * resource = patient-patient1
* entry[+]
  * fullUrl = "http://example.org/RelatedPerson/relatedperson-patient1-mother"
  * resource = relatedperson-patient1-mother
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-82
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 82: PERSON_CONTACT"
Description: "Composition ของแฟ้มที่ 82"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#82 "PERSON_CONTACT"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 82 PERSON_CONTACT: ข้อมูลบุคคลอ้างอิง"
* section[0]
  * title = "ข้อมูลผู้ป่วยและญาติ"
  * entry[0] = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
  * entry[+] = Reference(RelatedPerson/relatedperson-patient1-mother)
