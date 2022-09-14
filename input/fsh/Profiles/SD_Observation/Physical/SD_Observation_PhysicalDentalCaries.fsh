Profile: Moph43pObservationPhysicalDentalCaries
Parent: $SD_Observation_PhysicalBase
Id: moph43p-observation-physical-dental-caries
Title: "MoPH43p Observation: Physical-Dental Caries"
Description: "จำนวนฟันผุ (ซี่)"
* ^url = $SD_Observation_PhysicalDentalCaries
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #80967001 (exactly)
* value[x] only integer
