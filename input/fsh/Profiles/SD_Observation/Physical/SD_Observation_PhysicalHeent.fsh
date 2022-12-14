Profile: MophPcObservationPhysicalHeent
Parent: $SD_Observation_PhysicalBase
Id: mophpc-observation-physical-heent
Title: "MoPH-PC Observation: Physical-HEENT"
Description: "Physical findings of Head"
* ^url = $SD_Observation_PhysicalHeent
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #8701-5 (exactly)
* value[x] only string
