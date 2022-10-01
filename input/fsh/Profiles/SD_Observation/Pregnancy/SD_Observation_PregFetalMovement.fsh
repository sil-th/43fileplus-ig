Profile: MophPcObservationPregFetalMovement
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-fetal-movement
Title: "MoPH-PC Observation: Pregnancy-Fetal Movement"
Description: "เด็กดิ้นหรือไม่"
* ^url = $SD_Observation_PregFetalMovement
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #56834-5 (exactly)
* value[x] only string
