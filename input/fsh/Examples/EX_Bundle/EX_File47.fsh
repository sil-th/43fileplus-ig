Instance: bundle-file47-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 47: INVESTIGATION_REFER"
Description: "ข้อมูลการตรวจทางห้องปฏิบัติการและการตรวจวินิจฉัยอื่นๆ ของผู้ป่วยที่ได้รับการส่งต่อ (ทั้งกรณีส่งออก และรับเข้า) ประกอบด้วย Patient, Encounter, QuestionnaireResponse และ Appointment resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-47"
  * resource = composition-file-47
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/ServiceRequest/servicerequest-refer-main"
  * resource = servicerequest-refer-main
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-refer-lab1"
  * resource = observation-refer-lab1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-47
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 47: INVESTIGATION_REFER"
Description: "Composition ของแฟ้มที่ 47"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#47 "INVESTIGATION_REFER"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 47 INVESTIGATION_REFER: ข้อมูลการตรวจทางห้องปฏิบัติการและการตรวจวินิจฉัยอื่นๆ ของผู้ป่วยที่ได้รับการส่งต่อ (ทั้งกรณีส่งออก และรับเข้า)"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* section[+]
  * title = "ข้อมูลการส่งต่อ"
  * entry[0] = Reference(ServiceRequest/servicerequest-refer-main)
  * entry[+] = Reference(Observation/observation-refer-lab1)