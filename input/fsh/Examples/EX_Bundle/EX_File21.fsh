Instance: bundle-file21-document
InstanceOf: Bundle
Title: "ตัวอย่าง Bundle - แฟ้มที่ 21: LABFU"
Description: "ข้อมูลการตรวจทางห้องปฏิบัติการของผู้ป่วยทุกราย ประกอบด้วย Patient, Encounter, DiagnosticReport, Observation และ Claim resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/composition-file-21"
  * resource = composition-file-21
* entry[+]
  * fullUrl = "http://example.org/Patient/patient-patient4"
  * resource = patient-patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/encounter-lab1"
  * resource = encounter-lab1
* entry[+]
  * fullUrl = "http://example.org/DiagnosticReport/diagnostic-report-lipid1"
  * resource = diagnostic-report-lipid1
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-lab-chol"
  * resource = observation-lab-chol
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-lab-tg"
  * resource = observation-lab-tg
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-lab-ldl"
  * resource = observation-lab-ldl
* entry[+]
  * fullUrl = "http://example.org/Observation/observation-lab-hdl"
  * resource = observation-lab-hdl
* entry[+]
  * fullUrl = "http://example.org/Specimen/specimen-lab-lipid"
  * resource = specimen-lab-lipid
* entry[+]
  * fullUrl = "http://example.org/Claim/claim-lab-encounter1"
  * resource = claim-lab-encounter1
* entry[+]
  * fullUrl = "http://example.org/Organization/organization-main"
  * resource = organization-main


Instance: composition-file-21
InstanceOf: Composition
Title: "ตัวอย่าง Composition แฟ้มที่ 21: LABFU"
Description: "Composition ของแฟ้มที่ 21"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_TH_FileList#21 "LABFU"
* subject = Reference(Patient/patient-patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 21 LABFU: ข้อมูลการตรวจทางห้องปฏิบัติการของผู้ป่วยทุกราย"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/patient-patient4)
* section[+]
  * title = "ผลการตรวจทางห้องปฏิบัติการ"
  * entry[0] = Reference(Encounter/encounter-lab1)
  * entry[+] = Reference(DiagnosticReport/diagnostic-report-lipid1)
  * entry[+] = Reference(Observation/observation-lab-chol)
  * entry[+] = Reference(Observation/observation-lab-tg)
  * entry[+] = Reference(Observation/observation-lab-ldl)
  * entry[+] = Reference(Observation/observation-lab-hdl)
  * entry[+] = Reference(Specimen/specimen-lab-lipid)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Claim/claim-lab-encounter1)