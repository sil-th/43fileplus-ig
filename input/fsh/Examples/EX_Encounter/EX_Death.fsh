Instance: encounter-death1
InstanceOf: Encounter
Title: "ตัวอย่าง Encounter: สถานบริการที่เสียชีวิต"
Description: "สถานบริการที่เสียชีวิต กรณีเสียชีวิตในสถานพยาบาล"
Usage: #example
* extension[0]
  * url = $EX_TH_DeathLocType
  * valueCodeableConcept
    * coding[0] = $CS_THCC_DeathLocType#1 "ในสถานพยาบาล"
    * text = "ในสถานพยาบาล"
* extension[+]
  * url = $EX_TH_DeathPregnancy
  * valueCodeableConcept
    * coding[0] = $CS_THCC_DeathPregnancy#3 "ไม่ตั้งครรภ์"
    * text = "ไม่ตั้งครรภ์"
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#EMER "emergency"
* subject = Reference(Patient/patient-patient3)
  * insert GeneralReference($ID_ThaiCid, "2650591524440", "นาง สมปอง ใจดี")
* serviceProvider = Reference(organization-main)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")