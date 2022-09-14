Profile: Moph43pObservationAccLocation
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-location
Title: "MoPH43p Observation: Accident-Location"
Description: "สถานที่เกิดอุบัติเหตุ"
* ^url = $SD_Observation_AccidentLocation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #11376-1 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_AccidentLocation (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_AccidentLocation (exactly)
