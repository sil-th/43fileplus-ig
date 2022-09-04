Profile: Moph43pObservationChildDevelopment
Parent: $SD_Observation_ChildBase
Id: moph43p-observation-child-development
Title: "MoPH43p Observation: Child-Development"
Description: "ระดับพัฒนาการเด็ก"
* ^url = $SD_Observation_ChildDevelopment
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#406207000 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_ChildDevLevel (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_ChildDevLevel (exactly)