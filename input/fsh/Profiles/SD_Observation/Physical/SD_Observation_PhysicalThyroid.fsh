Profile: MophPcObservationPhysicalThyroid
Parent: $SD_Observation_PhysicalBase
Id: mophpc-observation-physical-thyroid
Title: "MoPH-PC Observation: Physical-Thyroid"
Description: "สภาพต่อมไทรอยด์"
* ^url = $SD_Observation_PhysicalThyroid
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #32479-8 (exactly)
* value[x] only string
