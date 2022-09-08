Profile: Moph43pObservationAccSprint
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-sprint
Title: "MoPH43p Observation: Accident-Sprint"
Description: "การใส่ splint/ slab"
* ^url = $SD_Observation_AccidentSprint
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $CS_Meta_AccidentObs#splint (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_AccidentSplint (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_AccidentSplint (exactly)

