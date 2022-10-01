Profile: MophPcObservationPhysicalKub
Parent: $SD_Observation_PhysicalBase
Id: mophpc-observation-physical-kub
Title: "MoPH-PC Observation: Physical-KUB"
Description: "Physical findings of Genitourinary tract"
* ^url = $SD_Observation_PhysicalKub
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #8700-7 (exactly)
* value[x] only string
