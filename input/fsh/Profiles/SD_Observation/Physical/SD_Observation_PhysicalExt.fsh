Profile: MophPcObservationPhysicalExt
Parent: $SD_Observation_PhysicalBase
Id: mophpc-observation-physical-ext
Title: "MoPH-PC Observation: Physical-Extremities"
Description: "Physical findings of Extremities"
* ^url = $SD_Observation_PhysicalExt
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #8703-1 (exactly)
* value[x] only string