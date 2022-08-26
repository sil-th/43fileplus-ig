Instance: bundle-file30-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 30: REHABILITATION"
Description: "ข้อมูลการให้บริการฟื้นฟูสมรรถภาพ ประกอบด้วย Patient, Encounter และ DeviceRequest resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-30"
  * resource = composition-file-30
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-rehab1"
  * resource = encounter-rehab1
* entry[+]
  * fullUrl = "http://example.org/DeviceRequest/devicerequest-rehab-device1"
  * resource = devicerequest-rehab-device1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-30
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 30: REHABILITATION"
Description: "Composition ของแฟ้มที่ 30"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#30 "REHABILITATION"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 30 REHABILITATION: ข้อมูลการให้บริการฟื้นฟูสมรรถภาพ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "ข้อมูลการรับบริการฟื้นฟูสมรรถภาพ"
  * entry[0] = Reference(Encounter/encounter-rehab1)
  * entry[+] = Reference(DeviceRequest/devicerequest-rehab-device1)