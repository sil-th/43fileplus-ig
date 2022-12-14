Instance: encounter-lab1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการตรวจทางห้องปฏิบัติการ"
Description: "การรับบริการตรวจทางห้องปฏิบัติการ"
Usage: #example
* identifier[0]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[0] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* identifier[+]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[0] = $CS_TH_IdentifierType#localAn "เลข Admission Number (AN) ของหน่วยบริการ"
  * system = $ID_LO_AN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* priority
  * coding[hl7] = $CS_HL7_Priority#R "routine"
  * coding[43plus] = $CS_43Plus_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* period
  * start = "2022-04-01T12:30:02+07:00"
  * end = "2022-04-01T17:30:02+07:00"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")