Profile: Moph43pObservationAccBreating
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-breathing
Title: "MoPH43p Observation: Accident-Breating"
Description: "การดูแลการหายใจ"
* ^url = $SD_Observation_AccidentBreathing
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $CS_Meta_AccidentObs#breathing (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_AccidentBreathing (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_AccidentBreathing (exactly)