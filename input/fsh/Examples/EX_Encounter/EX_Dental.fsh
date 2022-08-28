Instance: encounter-dental1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการทันตกรรม"
Description: "แสดงการรับบริการทันตกรรม โดยทั่วไป"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/patient-patient5) "ด.ญ. น่ารัก ใจดี"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_Meta_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-dentist1) "ทพญ. สมทรวง จริงใจ"
* period
  * extension
    * url = $EX_TH_EncounterServiceHour 
    * valueCodeableConcept = $CS_THCC_ServiceHour#1 "ในเวลาราชการ"
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* reasonCode[0]
  * coding[0] = $SCT#34043003 "Dental consultation and report"
  * text = "ตรวจฟัน"
* location
  * extension
    * url = $EX_TH_EncounterServiceLocationType 
    * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
  * location.display = "OPD ทันตกรรม Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")