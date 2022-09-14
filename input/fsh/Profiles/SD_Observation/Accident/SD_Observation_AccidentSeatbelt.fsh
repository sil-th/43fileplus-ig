Profile: Moph43pObservationAccSeatbelt
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-seatbelt
Title: "MoPH43p Observation: Accident-Seatbelt"
Description: "การคาดเข็มขัดนิรภัย"
* ^url = $SD_Observation_AccidentSeatbelt
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $CS_Meta_AccidentObs (exactly)
  * code 1..1 MS
  * code = #seatbelt (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)

