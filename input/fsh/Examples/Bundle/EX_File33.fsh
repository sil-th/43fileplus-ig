Instance: File33Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 33: PRENATAL"
Description: "ข้อมูลประวัติการตั้งครรภ์ ของหญิงตั้งครรภ์ในเขตรับผิดชอบ หรือหญิงตั้งครรภ์ผู้มารับบริการ ประกอบด้วย Patient, Encounter และ Observation resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File33Composition"
  * resource = File33Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient6"
  * resource = Patient6
* entry[+]
  * fullUrl = "http://example.org/Encounter/PrenatalEncounter1"
  * resource = PrenatalEncounter1
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBGravida"
  * resource = ObsOBGravida
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBLMP"
  * resource = ObsOBLMP
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBEDC"
  * resource = ObsOBEDC
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBVDRL"
  * resource = ObsOBVDRL
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBHBsAg"
  * resource = ObsOBHBsAg
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBHIV"
  * resource = ObsOBHIV
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBHct"
  * resource = ObsOBHct
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBThal"
  * resource = ObsOBThal
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBHeight"
  * resource = ObsOBHeight
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBContraceptive"
  * resource = ObsOBContraceptive
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsOBGeneralSymptom"
  * resource = ObsOBGeneralSymptom
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File33Composition
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 33: PRENATAL"
Description: "Composition ของแฟ้มที่ 33"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#33 "PRENATAL"
* subject = Reference(Patient/Patient6)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 33 PRENATAL: ข้อมูลประวัติการตั้งครรภ์ ของหญิงตั้งครรภ์ในเขตรับผิดชอบ หรือหญิงตั้งครรภ์ผู้มารับบริการ"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient6)
* section[+]
  * title = "ข้อมูลการตรวจ"
  * entry[0] = Reference(Encounter/PrenatalEncounter1)
  * entry[+] = Reference(Observation/ObsOBGravida)
  * entry[+] = Reference(Observation/ObsOBLMP)
  * entry[+] = Reference(Observation/ObsOBEDC)
  * entry[+] = Reference(Observation/ObsOBVDRL)
  * entry[+] = Reference(Observation/ObsOBHBsAg)
  * entry[+] = Reference(Observation/ObsOBHIV)
  * entry[+] = Reference(Observation/ObsOBHct)
  * entry[+] = Reference(Observation/ObsOBThal)
  * entry[+] = Reference(Observation/ObsOBHeight)
  * entry[+] = Reference(Observation/ObsOBContraceptive)
  * entry[+] = Reference(Observation/ObsOBGeneralSymptom)