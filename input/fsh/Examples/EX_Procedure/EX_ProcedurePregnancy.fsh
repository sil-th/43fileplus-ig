Instance: procedure-labor1
InstanceOf: $SD_Procedure_Labor
Title: "ตัวอย่าง Procedure: วิธีการคลอด"
Description: "วิธีการคลอด"
Usage: #example
* status = #completed
* code
  * coding[0] = $SCT#177184002 "Normal delivery procedure"
  * coding[+] = $CS_THCC_LaborProcedure#1 "NORMAL"
  * text = "Normal delivery procedure"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* performedDateTime = "2022-01-21T13:30:02+07:00"
* performer[0]
  * function = $CS_THCC_LaborPerformerRole#1 "แพทย์"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
  * onBehalfOf = Reference(Organization/organization-main)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* location
  * extension[0]
    * url = $EX_TH_ProcedureLaborLocation
    * valueCodeableConcept = $CS_THCC_LaborLocation#1 "โรงพยาบาล"
  * display = "ห้องคลอด โรงพยาบาลตัวอย่าง"
* outcome
  * coding[0] = $CS_THCC_PregnancyOutcome#O800 "Spontaneous vertex delivery"

