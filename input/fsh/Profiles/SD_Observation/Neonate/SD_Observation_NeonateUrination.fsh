Profile: Moph43pObservationNeonateUrination
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-urination
Title: "MoPH43p Observation: Neonate Urination"
Description: "ระบบขับถ่ายปัสสาวะ"
* ^url = $SD_Observation_NeonateUrination
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #364196001 (exactly)
* value[x] only string