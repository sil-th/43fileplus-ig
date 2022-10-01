Profile: MophPcObservationPhysicalLung
Parent: $SD_Observation_PhysicalBase
Id: mophpc-observation-physical-lung
Title: "MoPH-PC Observation: Physical-Lung"
Description: "Physical findings of Thorax and Lungs"
* ^url = $SD_Observation_PhysicalLung
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #8710-6 (exactly)
* value[x] only string
