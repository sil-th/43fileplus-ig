Profile: Moph43pObservationAccHelmet
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-helmet
Title: "MoPH43p Observation: Accident-Helmet"
Description: "การสวมหมวกนิรภัย"
* ^url = $SD_Observation_AccidentHelmet
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $CS_Meta_AccidentObs#helmet (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)