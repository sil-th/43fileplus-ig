Instance: File21Document
InstanceOf: Bundle
Title: "ตัวอย่าง แฟ้มที่ 21: LABFU"
Description: "ข้อมูลการตรวจทางห้องปฏิบัติการของผู้ป่วยทุกราย ประกอบด้วย Patient, Encounter, DiagnosticReport, Observation และ Claim resource"
Usage: #example
* identifier.system = $ID_documentId
* identifier.value = "642b21b0-7cc8-46b7-9310-376135d551b3"
* type = #document
* timestamp = "2022-07-29T12:30:02+07:00"
* entry[0]
  * fullUrl = "http://example.org/Composition/File21Composition"
  * resource = File21Composition
* entry[+]
  * fullUrl = "http://example.org/Patient/Patient4"
  * resource = Patient4
* entry[+]
  * fullUrl = "http://example.org/Encounter/LabEncounter1"
  * resource = LabEncounter1
* entry[+]
  * fullUrl = "http://example.org/DiagnosticReport/LipidDiagnosticReport"
  * resource = LipidDiagnosticReport
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsChol"
  * resource = ObsChol
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsTG"
  * resource = ObsTG
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsLDL"
  * resource = ObsLDL
* entry[+]
  * fullUrl = "http://example.org/Observation/ObsHDL"
  * resource = ObsHDL
* entry[+]
  * fullUrl = "http://example.org/Specimen/SpecimenLipid"
  * resource = SpecimenLipid
* entry[+]
  * fullUrl = "http://example.org/Claim/ClaimLabEncounter1"
  * resource = ClaimLabEncounter1
* entry[+]
  * fullUrl = "http://example.org/Organization/OrganizationMain"
  * resource = OrganizationMain


Instance: File21Composition
InstanceOf: Composition
Title: "Composition แฟ้มที่ 21: LABFU"
Description: "Composition ของแฟ้มที่ 21"
Usage: #example
* status = #final
* type
  * coding[0] = $LNC#75619-7 "National Health Care Surveys report"
  * coding[+] = $CS_THCC_43fileType#21 "LABFU"
* subject = Reference(Patient/Patient4)
* date = "2022-07-29T12:30:02+07:00"
* author[0] = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* title = "แฟ้มที่ 21 LABFU: ข้อมูลการตรวจทางห้องปฏิบัติการของผู้ป่วยทุกราย"
* section[0]
  * title = "ข้อมูลผู้ป่วย"
  * entry[0] = Reference(Patient/Patient4)
* section[+]
  * title = "ผลการตรวจทางห้องปฏิบัติการ"
  * entry[0] = Reference(Encounter/LabEncounter1)
  * entry[+] = Reference(DiagnosticReport/LipidDiagnosticReport)
  * entry[+] = Reference(Observation/ObsChol)
  * entry[+] = Reference(Observation/ObsTG)
  * entry[+] = Reference(Observation/ObsLDL)
  * entry[+] = Reference(Observation/ObsHDL)
  * entry[+] = Reference(Specimen/SpecimenLipid)
* section[+]
  * title = "ข้อมูลทางการเงิน"
  * entry[0] = Reference(Claim/ClaimLabEncounter1)