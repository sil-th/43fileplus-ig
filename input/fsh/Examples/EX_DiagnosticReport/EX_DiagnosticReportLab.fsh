Instance: diagnostic-report-lipid1
InstanceOf: $SD_DiagnosticReport_Lipid
Title: "ตัวอย่าง DiagnosticReport: ผลการตรวจทางห้องปฏิบัติการ Lipid Profile"
Description: "ผลการตรวจทางห้องปฏิบัติการ Lipid Profile"
Usage: #example
* identifier
  * type = $CS_TH_IdentifierType#localLabTest "เลขการตรวจทางห้องปฏิบัติการ ของหน่วยบริการ"
  * system = $ID_LO_Lab
  * value = "XXXXXX"
* status = #final
* category = $CS_HL7_DiagServiceCat#CH "Chemistry"
* code
  * coding[loinc] = $LNC#57698-3 "Lipid panel with direct LDL - Serum or Plasma"
  * coding[tmlt] = $CS_TMLT#320259 "Lipid profile (Cholesterol, HDL-chol, LDL-chol, TG)"
  * coding[icd10tm] = $CS_TH_ICD10TM_Lab#0544002 "Lipids (total), serum/plasma" 
  * text = "Lipid Profile"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* issued = "2022-04-01T12:30:02+07:00"
* performer = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* specimen = Reference(specimen-lab-lipid)
* result[Cholesterol] = Reference(Observation/observation-lab-chol)
* result[Triglyceride] = Reference(Observation/observation-lab-tg)
* result[HDL] = Reference(Observation/observation-lab-ldl)
* result[LDL] = Reference(Observation/observation-lab-hdl)