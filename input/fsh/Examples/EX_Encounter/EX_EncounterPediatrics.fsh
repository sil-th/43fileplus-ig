
Instance: encounter-newborn1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การดูแลทารกหลังคลอด"
Description: "แสดงการดูแลทารกหลังคลอด"
Usage: #example
* identifier[0]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[+] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-02-21T15:00:02+07:00"
  * end = "2022-02-21T15:00:02+07:00"
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD เด็ก Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")




Instance: encounter-vaccine1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การมารับบริการฉีดวัคซีน"
Description: "การมารับบริการฉีดวัคซีน"
Usage: #example
* identifier[0]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[+] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-03-21T15:00:02+07:00"
  * end = "2022-03-21T15:00:02+07:00"
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD เด็ก Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")




Instance: encounter-nutrition1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การมารับบริการตรวจวัดระดับโภชนาการและพัฒนาการ"
Description: "การมารับบริการตรวจวัดระดับโภชนาการและพัฒนาการ"
Usage: #example
* identifier[0]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[+] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-04-21T15:00:02+07:00"
  * end = "2022-04-21T15:00:02+07:00"
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD เด็ก Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")