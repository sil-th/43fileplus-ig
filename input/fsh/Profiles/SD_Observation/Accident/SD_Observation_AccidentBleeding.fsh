Profile: Moph43pObservationAccBleeding
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-bleeding
Title: "MoPH43p Observation: Accident-Bleeding"
Description: "การห้ามเลือด"
* ^url = $SD_Observation_AccidentBleeding
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $CS_Meta_AccidentObs#stop-bleed (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_AccidentBleeding (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_AccidentBleeding (exactly)