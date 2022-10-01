Profile: MophPcObservationPhysicalAbd
Parent: $SD_Observation_PhysicalBase
Id: mophpc-observation-physical-abd
Title: "MoPH-PC Observation: Physical-Abdomen"
Description: "Physical findings of Abdomen"
* ^url = $SD_Observation_PhysicalAbd
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #8694-2 (exactly)
* value[x] only string
