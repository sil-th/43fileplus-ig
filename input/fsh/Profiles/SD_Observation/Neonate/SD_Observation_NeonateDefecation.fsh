Profile: MophPcObservationNeonateDefecation
Parent: $SD_Observation_NeonateBase
Id: mophpc-observation-neonatal-defecation
Title: "MoPH43p Observation: Neonate Defecation"
Description: "ระบบขับถ่ายอุจจาระ"
* ^url = $SD_Observation_NeonateDefecation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #364171004 (exactly)
* value[x] only string