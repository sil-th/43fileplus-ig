Instance: encounter-refer1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการแผนกฉุกเฉิน และส่งต่อ"
Description: "แสดงการรับบริการแผนกฉุกเฉิน และส่งต่อ"
Usage: #example
* extension[0]
  * url = $EX_TH_EncounterReferCategory
  * valueCodeableConcept = $CS_43File_ReferEncounterClass#3 "ผู้ป่วยฉุกเฉิน (ยกเว้นอุบัติเหตุ)"
* extension[+]
  * url = $EX_TH_EncounterReferResultCode
  * valueCodeableConcept = $CS_43File_ReferResult#1 "ตอบรับการส่งต่อ"
* extension[+]
  * url = $EX_TH_EncounterReferResultReason
  * valueString = "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#EMER "emergency"
* priority
  * coding[0] = $CS_HL7_Priority#EM "emergency"
  * coding[+] = $CS_THCC_AccidentPriority#2 "emergency"
  * text = "emergency"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2021-03-31T10:30:02+07:00"
  * end = "2021-03-31T12:30:02+07:00"
* reasonCode
  * coding = $SCT#418107008 "Unconscious"
  * text = "หมดสติ 30 นาทีก่อนมารพ."
* diagnosis[0]
  * condition = Reference(Condition/condition-refer1)
  * use = $CS_HL7_DiagRole#AD "Admission diagnosis"
* diagnosis[+]
  * condition = Reference(Condition/condition-refer2)
  * use
    * coding[0] = $CS_HL7_DiagRole#DD "Discharge diagnosis"
    * coding[+] = $CS_43Plus_EncounterDiagnosisRole#1 "PRINCIPLE DX (การวินิจฉัยโรคหลัก)"
* account = Reference(Account/account-refer-encounter1)
* hospitalization
  * extension[0]
    * url = $EX_TH_EncounterDischargeStatus 
    * valueCodeableConcept = $CS_THCC_DischargeStatus#3 "ส่งต่อไปยังสถานพยาบาลอื่น"
  * admitSource
    * coding[0] = $CS_HL7_AdmitSource#other "Other"
    * coding[+] = $CS_THCC_AccidentAdmitSource#2 "ได้รับการส่งตัวโดย First responder"
    * text = "ได้รับการส่งตัวโดย First responder"
  * destination = Reference(Organization/organization-third)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
    * extension[0]
      * url = $EX_TH_EncounterReferOutID
      * valueReference = Reference(ServiceRequest/servicerequest-refer-out-accident1)
        * insert GeneralReference($ID_LO_Refer, "XXXXX", "ใบส่งตัวเลขที่ XXXXX")
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: encounter-refer1-accept
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับการส่งต่อ เข้ารับบริการแผนกฉุกเฉิน"
Description: "แสดงการรับการส่งต่อ เข้ารับบริการแผนกฉุกเฉิน"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_AN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#EMER "emergency"
* priority
  * coding[0] = $CS_HL7_Priority#EM "emergency"
  * coding[+] = $CS_THCC_AccidentPriority#2 "emergency"
  * text = "emergency"
* basedOn = Reference(ServiceRequest/servicerequest-refer-main-full)
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor2) "พญ. สมศรี จริงใจ"
* period
  * start = "2021-03-31T14:30:02+07:00"
  * end = "2021-03-31T16:30:02+07:00"
* reasonCode
  * coding = $SCT#418107008 "Unconscious"
  * text = "หมดสติ 30 นาทีก่อนมารพ."
* diagnosis[0]
  * condition = Reference(Condition/condition-refer3)
  * use = $CS_HL7_DiagRole#AD "Admission diagnosis"
* account = Reference(Account/account-refer-encounter1)
* hospitalization
  * admitSource
    * coding[0] = $CS_HL7_AdmitSource#hosp-trans "Transferred from other hospital"
    * coding[+] = $CS_THCC_AccidentAdmitSource#6 "ได้รับการส่งต่อจากสถานพยาบาลอื่น"
    * text = "ได้รับการส่งต่อจากสถานพยาบาลอื่น"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
