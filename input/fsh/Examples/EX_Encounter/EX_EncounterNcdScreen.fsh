Instance: encounter-ncd1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการ NCD OPD"
Description: "แสดงการรับบริการ NCD OPD"
Usage: #example
* identifier[0]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[0] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* priority
  * coding[hl7] = $CS_HL7_Priority#R "routine"
  * coding[43plus] = $CS_43Plus_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-01-21T12:30:02+07:00"
  * end = "2022-01-21T14:30:02+07:00"
* diagnosis
  * condition = Reference(Condition/condition-ncd1)
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location = Reference(Location/location-opd-gp-clinic1) "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")