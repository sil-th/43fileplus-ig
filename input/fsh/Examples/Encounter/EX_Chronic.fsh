Instance: ChronicEncounter1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการครั้งที่ 1 ของผู้ป่วยรายที่ 4"
Description: "แสดงการรับบริการตรวจโรคเบาหวานครั้งที่ 1"
Usage: #example
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/Patient4)
* period
  * start = "2022-01-01T12:30:02+07:00"
  * end = "2022-01-01T14:30:02+07:00"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")

Instance: ChronicEncounter2
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การรับบริการครั้งที่ 2 ของผู้ป่วยรายที่ 4"
Description: "แสดงการรับบริการตรวจโรคเบาหวานครั้งที่ 2"
Usage: #example
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* subject = Reference(Patient/Patient4)
* period
  * start = "2022-04-01T12:30:02+07:00"
  * end = "2022-04-01T14:30:02+07:00"
* serviceProvider = Reference(Organization/OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")