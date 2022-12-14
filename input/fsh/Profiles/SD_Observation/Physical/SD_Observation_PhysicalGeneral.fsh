Profile: MophPcObservationPhysicalGeneral
Parent: $SD_Observation_PhysicalBase
Id: mophpc-observation-physical-general
Title: "MoPH-PC Observation: Physical-General Appearance"
Description: "Physical Exam: General appearance"
* ^url = $SD_Observation_PhysicalGeneral
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #32434-3 (exactly)
* value[x] only string
