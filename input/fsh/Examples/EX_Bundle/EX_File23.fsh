Instance: bundle-file23-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 23: ADMISSION"
Description: "ข้อมูลประวัติการรับผู้ป่วยไว้รักษาในโรงพยาบาล ประกอบด้วย Patient, Encounter และ Claim resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-23"
  * resource = composition-file-23
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-ipd1"
  * resource = encounter-ipd1
* entry[+]
  * fullUrl = "http://example.org/Claim/claim-ipd-encounter1"
  * resource = claim-ipd-encounter1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-23
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 23: ADMISSION"
Description: "Composition ของแฟ้มที่ 23"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#23 "ADMISSION"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 23 ADMISSION: ข้อมูลประวัติการรับผู้ป่วยไว้รักษาในโรงพยาบาล"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "ข้อมูลการรักษาในโรงพยาบาล"
  * entry[0] = Reference(Encounter/encounter-ipd1)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Claim/claim-ipd-encounter1)