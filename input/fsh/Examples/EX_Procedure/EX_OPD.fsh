Instance: procedure-opd1
InstanceOf: Procedure
Title: "ตัวอย่าง Procedure: หัตถการ ณ OPD"
Description: "หัตถการ ณ OPD"
Usage: #example
* extension[0]
  * url = $EX_TH_ProcedureProcedureType
  * valueCodeableConcept = $CS_eClaim_ProcedureType#1 "Principal procedure"
* status = #completed
* code
  * coding[0] = $SCT#225358003 "Wound care"
  * coding[+] = $ICD9CM#93.57 "Application of other wound dressing"
  * coding[+] = $CS_TH_ICD10TM#XXX "ICD-10-TM CODE"
  * coding[+] = $ID_LO_Procedure#XXX "Local code"
  * text = "Wound care"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* performedPeriod
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T12:40:02+07:00"
* performer[0]
  * function = $CS_THCC_LaborPerformerRole#1 "แพทย์"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
  * onBehalfOf = Reference(Organization/organization-main)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* location
  * extension[0]
    * url = $EX_TH_ProcedureLaborLocation
    * valueCodeableConcept = $CS_THCC_LaborLocation#1 "โรงพยาบาล"
  * display = "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
* outcome
  * coding[0] = $SCT#830130002 "Wound healing well"
  * text = "แผลดีขึ้น"

