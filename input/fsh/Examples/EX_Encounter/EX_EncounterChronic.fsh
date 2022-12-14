Instance: encounter-chronic1
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการครั้งที่ 1 ของผู้ป่วยรายที่ 4"
Description: "แสดงการรับบริการตรวจโรคเบาหวานครั้งที่ 1"
Usage: #example
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/patient-patient4)
* period
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")

Instance: encounter-chronic2
InstanceOf: $SD_Encounter_Base
Title: "ตัวอย่าง Encounter: การรับบริการครั้งที่ 2 ของผู้ป่วยรายที่ 4"
Description: "แสดงการรับบริการตรวจโรคเบาหวานครั้งที่ 2"
Usage: #example
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/patient-patient4)
* period
  * start = "2022-04-01T12:30:02+07:00"
  * end = "2022-04-01T14:30:02+07:00"
* serviceProvider = Reference(Organization/organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")