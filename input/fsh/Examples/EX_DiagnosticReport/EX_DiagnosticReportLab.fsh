Instance: diagnostic-report-lipid1
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
  * coding[+] = $CS_TH_ICD10TM_Lab#0544002 "Lipids (total), serum/plasma" 
  * text = "Lipid Profile"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* issued = "2022-04-01T12:30:02+07:00"
* performer = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* specimen = Reference(specimen-lab-lipid)
* result[0] = Reference(observation-lab-chol)
* result[+] = Reference(observation-lab-tg)
* result[+] = Reference(observation-lab-ldl)
* result[+] = Reference(observation-lab-hdl)