Instance: OpdEncounter1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการ OPD"
Description: "แสดงการรับบริการ OPD โดยทั่วไป"
Usage: #example
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
* subject = Reference(Patient/Patient4) "นาง สมควร ใจดี"
  * extension
    * url = $EX_TH_PatientLocationType 
    * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
* basedOn = Reference(ServiceRequest/ReferInOpdEncounter1)
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/PractitionerDoctor1) "พญ. สมหญิง จริงใจ"
* period
  * extension
    * url = $EX_TH_ServiceHour 
    * valueCodeableConcept = $CS_THCC_ServiceHour#1 "ในเวลาราชการ"
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* reasonCode[0]
  * coding[0] = $SCT#386661006 "Fever"
  * text = "มีไข้ 3 วัน"
* account = Reference(Account/AccountOpdEncounter1)
* hospitalization
  * extension[0]
    * url = $EX_TH_DischargeStatus 
    * valueCodeableConcept = $CS_THCC_DischargeStatus#3 "ส่งต่อไปยังสถานพยาบาลอื่น"
  * extension[+]
    * url = $EX_TH_DischargeInstruction
    * valueAnnotation
      * text = "ใส่คำแนะนำหลังการเข้ารับบริการ"
  * origin = Reference(Organization/OrganizationSecond)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลเครือข่าย")
  * admitSource
    * coding[0] = $CS_HL7_AdmitSource#gp "General Practitioner referral"
    * coding[+] = $CS_THCC_AdmitSource#3 "ได้รับการส่งต่อจากสถานพยาบาลอื่น"
    * text = "มารับบริการเอง"
  * destination = Reference(Organization/OrganizationThird)
    * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
* location
  * extension
    * url = $EX_TH_ServiceLocationType 
    * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
  * location = Reference(Location/OpdGPClinic1) "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
  * physicalType = $CS_THCC_ServiceLocation#1 "ในสถานบริการ"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
  * extension
    * url = $EX_TH_ProviderType 
    * valueCodeableConcept = $CS_THCC_ProviderType#1 "Main Contractor"

