Instance: encounter-death1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การเสียชีวิต"
Description: "การเสียชีวิต กรณีเสียชีวิตในสถานพยาบาล"
Usage: #example
* identifier[0]
  * use = #official
  * type
    // * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[0] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#EMER "emergency"
* subject = Reference(Patient/patient-patient3)
  * insert GeneralReference($ID_ThaiCid, "2650591524440", "นาง สมปอง ใจดี")
* period
  * start = "2022-04-25T12:30:02+07:00"
* diagnosis[0]
  * condition = Reference(Condition/condition-cause-of-death1)
  * use = $CS_Meta_ExtendedHL7DiagnosisRole#death "Cause of death"
  * rank = 1
* diagnosis[+]
  * condition = Reference(Condition/condition-cause-of-death1)
  * use = $CS_HL7_DiagRole#CM "Comorbidity diagnosis"
  * rank = 2
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")