Instance: encounter-accident1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการแผนกฉุกเฉิน"
Description: "แสดงการรับบริการแผนกฉุกเฉินโดยทั่วไป"
Usage: #example
* identifier[0]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[+] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#EMER "emergency"
* priority
  * coding[hl7] = $CS_HL7_Priority#EM "emergency"
  * coding[thccAccident] = $CS_THCC_AccidentPriority#2 "emergency"
  * text = "emergency"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* participant[0]
  * type
    * coding[hl7] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[43plus] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-03-01T12:30:02+07:00"
  * end = "2022-03-01T14:30:02+07:00"
* diagnosis[0]
  * condition = Reference(Condition/condition-accident1)
  * use = $CS_HL7_DiagRole#AD "Admission diagnosis"
* account = Reference(Account/account-accident-encounter1)
* hospitalization
  * extension[0]
    * url = $EX_TH_EncounterDischargeStatus 
    * valueCodeableConcept = $CS_THCC_DischargeStatus#3 "ส่งต่อไปยังสถานพยาบาลอื่น"
  * admitSource
    * coding[hl7] = $CS_HL7_AdmitSource#other "Other"
    * coding[thccAccident] = $CS_THCC_AccidentAdmitSource#2 "ได้รับการส่งตัวโดย First responder"
    * text = "ได้รับการส่งตัวโดย First responder"
  * destination = Reference(Organization/organization-third)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
    * extension[0]
      * url = $EX_TH_EncounterReferOutID
      * valueReference = Reference(ServiceRequest/servicerequest-refer-out-accident1)
        * insert GeneralReference($ID_LO_Refer, "XXXXX", "ใบส่งตัวเลขที่ XXXXX")
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
