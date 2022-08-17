Instance: encounter-specialpp1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการส่งเสริมสุขภาพป้องกันโรคเฉพาะ"
Description: "แสดงการรับบริการส่งเสริมสุขภาพป้องกันโรคเฉพาะ"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
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
  * extension
    * url = $EX_TH_ServiceHour 
    * valueCodeableConcept = $CS_THCC_ServiceHour#1 "ในเวลาราชการ"
  * start = "2022-04-10T12:30:02+07:00"
  * end = "2022-04-10T14:30:02+07:00"
* location
  * extension
    * url = $EX_TH_ServiceLocationType 
    * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
  * location = Reference(Location/location-opd-gp-clinic1) "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")


Instance: encounter-community-activity1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: กิจกรรมในชุมชนที่อยู่ในเขตรับผิดชอบ"
Description: "แสดงกิจกรรมในชุมชนที่อยู่ในเขตรับผิดชอบ"
Usage: #example
* status = #finished
* class = $CS_HL7_EncounterClass#FLD "field"
* subject = Reference(Group/group-patient-village1) "ประชากรในหมู่บ้านสุขใจ แสนสุข"
* period
  * start = "2022-04-10T12:30:02+07:00"
  * end = "2022-04-10T14:30:02+07:00"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")



Instance: encounter-homevisit1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การให้บริการในชุมชน"
Description: "แสดงการให้บริการในชุมชน"
Usage: #example
* identifier[0]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#HH "home health"
* serviceType = $CS_THCC_CommunityService#1A001 "เยี่ยมผู้ป่วยโรคเบาหวาน"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* participant[0]
  * type
    * coding[0] = $CS_HL7_ParticipantType#PPRF "primary performer"
    * coding[+] = $CS_THCC_ParticipantType#PPRF "แพทย์เจ้าของคนไข้"
  * individual = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* period
  * start = "2022-04-10T12:30:02+07:00"
  * end = "2022-04-10T14:30:02+07:00"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")

