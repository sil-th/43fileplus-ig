Instance: encounter-fp
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการ OPD Family Planning"
Description: "แสดงการรับบริการ OPD Family Planning"
Usage: #example
* extension[0]
  * url = $EX_TH_EncounterFpCaseType
  * valueCodeableConcept = $CS_PCU_FpCaseType#1 "รายใหม่" 
* identifier[0]
  * use = #secondary
  * type
    // * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[0] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2021-01-21T12:30:02+07:00"
  * end = "2021-01-21T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: encounter-prenatal1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการ OPD Prenatal care"
Description: "แสดงการรับบริการ OPD Prenatal care"
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2021-03-21T12:30:02+07:00"
  * end = "2021-03-21T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: encounter-anc1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการ OPD ANC"
Description: "แสดงการรับบริการ OPD ANC"
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2021-04-21T12:30:02+07:00"
  * end = "2021-04-21T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: encounter-labor1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการทำคลอด"
Description: "แสดงการรับบริการทำคลอด"
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-01-21T12:30:02+07:00"
  * end = "2022-01-21T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "ห้องคลอด โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: encounter-postnatal1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการหลังคลอด"
Description: "แสดงการรับบริการหลังคลอด"
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
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-01-21T12:30:02+07:00"
  * end = "2022-01-21T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")