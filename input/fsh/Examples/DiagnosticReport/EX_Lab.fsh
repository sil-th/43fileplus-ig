Instance: LipidDiagnosticReport
InstanceOf: DiagnosticReport
Title: "ตัวอย่าง DiagnosticReport: ผลการตรวจทางห้องปฏิบัติการ Lipid Profile"
Description: "ผลการตรวจทางห้องปฏิบัติการ Lipid Profile"
Usage: #example
* identifier
  * system = $ID_LO_Lab
  * value = "XXXXXX"
* status = #final
* category = $CS_HL7_DiagServiceCat#CH "Chemistry"
* code
  * coding[0] = $LNC#57698-3 "Lipid panel with direct LDL - Serum or Plasma"
  * coding[+] = $CS_TMLT#320259 "Lipid profile (Cholesterol, HDL-chol, LDL-chol, TG)"
  * coding[+] = $CS_ICD10TM_Lab#0544002 "Lipids (total), serum/plasma\" \"การตรวจหา ลิปิด (ทั้งหมด)  ในซีรั่ม / พลาสม่า"
  * text = "Lipid Profile"
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
* issued = "2022-04-01T12:30:02+07:00"
* performer = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* specimen = Reference(SpecimenLipid)
* result[0] = Reference(ObsChol)
* result[+] = Reference(ObsTG)
* result[+] = Reference(ObsLDL)
* result[+] = Reference(ObsHDL)