// Inspired from http://build.fhir.org/ig/HL7/vrdr/StructureDefinition-vrdr-cause-of-death-part1.html
// They use Observation for cause of death report

Instance: CauseOfDeath1
InstanceOf: Observation
Title: "สาเหตุการเสียชีวิตของผู้ป่วยรายที่ 3"
Description: "แสดงการเสียชีวิตจาก cardiac arrest"
Usage: #example
* status = #final
* code = $LNC#79378-6 "Cause of death"
* subject = Reference(Patient/Patient3)
* effectivePeriod.start = "2022-04-25T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $SCT#410430005 "Cardiorespiratory arrest (disorder)"
  * coding[+] = $ICD10#I46.1 "Sudden cardiac death, so described"
  * text = "Cardiorespiratory arrest"
* component[0]
  * code = $SCT#272396007 "Ranked categories (qualifier value)"
  * valueInteger = 1

Instance: CauseOfDeath2
InstanceOf: Observation
Title: "รหัสโรคหรือภาวะอื่นที่เป็นเหตุหนุน"
Description: "แสดงการมีภาวะความดันโลหิตสูงวิกฤติหนุ่น"
Usage: #example
* status = #final
* code = $LNC#69441-4 "Other significant causes or conditions of death"
* subject = Reference(Patient/Patient3)
* effectivePeriod.start = "2022-04-25T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $SCT#706882009 "Hypertensive crisis (disorder)"
  * text = "Hypertensive crisis"

Instance: DeathEncounter
InstanceOf: Encounter
Title: "สถานบริการที่เสียชีวิต"
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
* subject = Reference(Patient/Patient3)
  * insert GeneralReference($ID_ThaiCid, "2650591524440", "นาง สมปอง ใจดี")
* serviceProvider = Reference(OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
