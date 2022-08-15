Instance: FunctionalEncounter
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การตรวจประเมินความบกพร่องทางสุขภาพ"
Description: "การตรวจประเมินความบกพร่องทางสุขภาพ"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* period
  * start = "2022-01-25T12:30:02+07:00"
* subject = Reference(Patient/Patient3)
  * insert GeneralReference($ID_ThaiCid, "2650591524440", "นาง สมปอง ใจดี")
* diagnosis
  * condition = Reference(Condition/DisabilityCondition1)
* serviceProvider = Reference(OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")