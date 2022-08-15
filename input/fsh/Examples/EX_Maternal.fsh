// Encounter, Condition, and Procedure

Instance: FPEncounter1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการ OPD Family Planning"
Description: "แสดงการรับบริการ OPD Family Planning"
Usage: #example
* extension[0]
  * url = $EX_TH_FpCaseType
  * valueCodeableConcept = $CS_THCC_FpCaseType#1 "รายใหม่" 
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2021-01-21T12:30:02+07:00"
  * end = "2021-01-21T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_ServiceLocationType 
    * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * physicalType = $CS_THCC_ServiceLocation#1 "ในสถานบริการ"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: PrenatalEncounter1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการ OPD Prenatal care"
Description: "แสดงการรับบริการ OPD Prenatal care"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2021-03-21T12:30:02+07:00"
  * end = "2021-03-21T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_ServiceLocationType 
    * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * physicalType = $CS_THCC_ServiceLocation#1 "ในสถานบริการ"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: ANCEncounter1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการ OPD ANC"
Description: "แสดงการรับบริการ OPD ANC"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2021-04-21T12:30:02+07:00"
  * end = "2021-04-21T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_ServiceLocationType 
    * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * physicalType = $CS_THCC_ServiceLocation#1 "ในสถานบริการ"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: LaborEncounter1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการทำคลอด"
Description: "แสดงการรับบริการทำคลอด"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-01-21T12:30:02+07:00"
  * end = "2022-01-21T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_ServiceLocationType 
    * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "ห้องคลอด โรงพยาบาลตัวอย่าง"
  * physicalType = $CS_THCC_ServiceLocation#1 "ในสถานบริการ"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: PostnatalEncounter1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการหลังคลอด"
Description: "แสดงการรับบริการหลังคลอด"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-01-21T12:30:02+07:00"
  * end = "2022-01-21T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_ServiceLocationType 
    * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD OB-GYN Clinic 1 โรงพยาบาลตัวอย่าง"
  * physicalType = $CS_THCC_ServiceLocation#1 "ในสถานบริการ"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



// Condition

Instance: LaborCondition1
InstanceOf: Condition
Title: "ตัวอย่าง Condition: ผลสิ้นสุดการตั้งครรภ์"
Description: "ผลสิ้นสุดการตั้งครรภ์"
Usage: #example
* clinicalStatus = $CS_HL7_ConditionStatus#active
* verificationStatus = $CS_HL7_ConditionVerification#confirmed
* category.coding = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#48782003 "Delivery normal"
  * coding[+] = $ICD10#O80.0 "Spontaneous vertex delivery"
  * text = "Delivery normal"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* recordedDate = "2022-01-21T12:30:02+07:00"
* recorder = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"




// Procedure

Instance: LaborProcedure01
InstanceOf: Procedure
Title: "ตัวอย่าง Procedure: วิธีการคลอด"
Description: "วิธีการคลอด"
Usage: #example
* status = #completed
* code
  * coding[0] = $SCT#177184002 "Normal delivery procedure"
  * coding[+] = $CS_THCC_LaborProcedure#1 "NORMAL"
  * text = "Normal delivery procedure"
* subject = Reference(Patient/Patient6) "นาง สมฤทัย ใจดี"
* performedDateTime = "2022-01-21T13:30:02+07:00"
* performer[0]
  * function = $CS_THCC_LaborPerformerRole#1 "แพทย์"
  * actor = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
  * onBehalfOf = Reference(Organization/OrganizationMain)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
* location
  * extension[0]
    * url = $EX_TH_LaborLocation
    * valueCodeableConcept = $CS_THCC_LaborLocation#1 "โรงพยาบาล"
  * display = "ห้องคลอด โรงพยาบาลตัวอย่าง"
* outcome
  * coding[0] = $CS_THCC_PregnancyOutcome#O800 "Spontaneous vertex delivery"

