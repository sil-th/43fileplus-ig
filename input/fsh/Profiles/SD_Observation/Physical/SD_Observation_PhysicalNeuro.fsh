Profile: Moph43pObservationPhysicalNeuro
Parent: $SD_Observation_PhysicalBase
Id: moph43p-observation-physical-neuro
Title: "MoPH43p Observation: Physical-Neuro"
Description: "Physical findings of Nervous system"
* ^url = $SD_Observation_PhysicalNeuro
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #8705-6 (exactly)
* value[x] only string
