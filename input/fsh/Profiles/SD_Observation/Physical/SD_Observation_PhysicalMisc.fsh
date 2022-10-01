Profile: MophPcObservationPhysicalMisc
Parent: $SD_Observation_PhysicalBase
Id: mophpc-observation-physical-misc
Title: "MoPH-PC Observation: Physical-Misc"
Description: "การตรวจอื่น ๆ"
* ^url = $SD_Observation_PhysicalMisc
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #29544-4 (exactly)
* value[x] only string
