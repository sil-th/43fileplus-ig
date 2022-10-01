Instance: encounter-surveillance1
InstanceOf: $SD_Encounter_Surveillance
Title: "ตัวอย่าง Encounter: การรับบริการ Surveillance"
Description: "แสดงการรับบริการของผู้ป่วยด้วยโรคที่ต้องเฝ้าระวัง"
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
  * extension
    * url = $EX_TH_EncounterPatientLocationType 
    * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * extension
    * url = $EX_TH_EncounterServiceHour 
    * valueCodeableConcept = $CS_THCC_ServiceHour#1 "ในเวลาราชการ"
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* reasonCode[0]
  * coding[0] = $CS_THCC_SurvGroup#0005 "ไข้ มีผื่น ปวดกล้ามเนื้อ ปวดกระดูกหรือข้อ ปวดศรีษะ ปวดกระบอกตา เลือกออกตามผิวหนัง"
* diagnosis[0]
  * condition = Reference(Condition/condition-surveillance1)
  * use = $CS_HL7_DiagRole#AD "Admission diagnosis"
* diagnosis[+]
  * condition = Reference(Condition/condition-surveillance2)
  * use = $CS_HL7_DiagRole#DD "Discharge diagnosis"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")