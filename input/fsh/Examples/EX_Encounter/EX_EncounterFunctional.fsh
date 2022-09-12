Instance: encounter-functional1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: การตรวจประเมินความบกพร่องทางสุขภาพ"
Description: "การตรวจประเมินความบกพร่องทางสุขภาพ"
Usage: #example
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_HL7_IdentifierType#VN "Visit number"
    * coding[+] = $CS_TH_IdentifierType#localVn "เลข Visit Number (VN) ของหน่วยบริการ"
  * system = $ID_LO_VN
  * value = "65-XXXXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* period
  * start = "2022-01-25T12:30:02+07:00"
* subject = Reference(Patient/patient-patient3)
  * insert GeneralReference($ID_ThaiCid, "2650591524440", "นาง สมปอง ใจดี")
* diagnosis
  * condition = Reference(Condition/condition-disability1)
* serviceProvider = Reference(organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")