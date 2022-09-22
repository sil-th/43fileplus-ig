Profile: MophPcObservationPhysicalHeart
Parent: $SD_Observation_PhysicalBase
Id: mophpc-observation-physical-heart
Title: "MoPH43p Observation: Physical-Heart"
Description: "Physical findings of Heart"
* ^url = $SD_Observation_PhysicalHeart
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #8702-3 (exactly)
* value[x] only string
