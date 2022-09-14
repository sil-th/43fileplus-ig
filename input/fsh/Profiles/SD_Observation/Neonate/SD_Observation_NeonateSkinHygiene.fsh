Profile: Moph43pObservationNeonateSkinHygiene
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-skin-hygiene
Title: "MoPH43p Observation: Neonate Skin Hygiene"
Description: "ความสะอาดของผิวหนัง"
* ^url = $SD_Observation_NeonateSkinHygiene
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #364534008 (exactly)
* value[x] only string