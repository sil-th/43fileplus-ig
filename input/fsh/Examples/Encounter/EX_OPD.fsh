Instance: encounter-opd1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการ OPD"
Description: "แสดงการรับบริการ OPD โดยทั่วไป"
Usage: #example
* meta
  * security = $CS_HL7_SecurityLebel#R "restricted"
* extension[0]
  * url = $EX_TH_ServiceTypeTH 
  * valueCodeableConcept = $CS_THCC_ServiceTypeTH#0 "Refer ในบัญชีเครือข่ายเดียวกัน"
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* priority
  * coding[0] = $CS_HL7_Priority#R "routine"
  * coding[+] = $CS_THCC_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
  * extension
    * url = $EX_TH_PatientLocationType 
    * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
* basedOn = Reference(ServiceRequest/servicerequest-refer-in-opd1)
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * extension
    * url = $EX_TH_ServiceHour 
    * valueCodeableConcept = $CS_THCC_ServiceHour#1 "ในเวลาราชการ"
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* reasonCode[0]
  * coding[0] = $SCT#386661006 "Fever"
  * text = "มีไข้ 3 วัน"
* account = Reference(Account/account-opd-encounter1)
* hospitalization
  * extension[0]
    * url = $EX_TH_DischargeStatus 
    * valueCodeableConcept = $CS_THCC_DischargeStatus#3 "ส่งต่อไปยังสถานพยาบาลอื่น"
  * extension[+]
    * url = $EX_TH_DischargeInstruction
    * valueAnnotation
      * text = "ใส่คำแนะนำหลังการเข้ารับบริการ"
  * origin = Reference(Organization/organization-second)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลเครือข่าย")
  * admitSource
    * coding[0] = $CS_HL7_AdmitSource#gp "General Practitioner referral"
    * coding[+] = $CS_THCC_AdmitSource#3 "ได้รับการส่งต่อจากสถานพยาบาลอื่น"
    * text = "มารับบริการเอง"
  * destination = Reference(Organization/organization-third)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
* location
  * extension
    * url = $EX_TH_ServiceLocationType 
    * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
  * location = Reference(Location/location-opd-gp-clinic1) "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
  * extension
    * url = $EX_TH_ProviderType 
    * valueCodeableConcept = $CS_THCC_ProviderType#1 "Main Contractor"



Instance: encounter-opd2
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการ OPD บริการปฐมภูมิ"
Description: "แสดงการรับบริการ OPD บริการปฐมภูมิ"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* priority
  * coding[0] = $CS_HL7_Priority#R "routine"
  * coding[+] = $CS_THCC_ServicePriority#1 "ปกติ"
  * text = "ปกติ"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
  * extension
    * url = $EX_TH_PatientLocationType 
    * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* reasonCode[0]
  * coding[0] = $SCT#135883003 "Cough with fever"
  * text = "มีไข้ ไอ 3 วัน"
* diagnosis[0]
  * condition = Reference(Condition/condition-opd2-main)
  * use
    * coding[0] = $CS_HL7_DiagRole#DD "Discharge diagnosis"
    * coding[+] = $CS_THCC_EncounterDiagnosisRole#1 "PRINCIPLE DX (การวินิจฉัยโรคหลัก)"
* diagnosis[+]
  * condition = Reference(Condition/condition-opd2-comorbid)
  * use
    * coding[0] = $CS_HL7_DiagRole#DD "Discharge diagnosis"
    * coding[+] = $CS_THCC_EncounterDiagnosisRole#1 "PRINCIPLE DX (การวินิจฉัยโรคหลัก)"
// * account = Reference(Account/account-opd-encounter2)
* location
  * extension
    * url = $EX_TH_ServiceLocationType 
    * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
  * location = Reference(Location/location-opd-gp-clinic1)
    * insert GeneralReference($ID_LO_DepCode, "XXXXX", "OPD GP Clinic 1")
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")

