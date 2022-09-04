Profile: Moph43pObservationNcdFamHT
Parent: $SD_Observation_NcdBase
Id: moph43p-observation-ncd-familh-ht
Title: "MoPH43p Observation: NCD Family HT"
Description: "ประวัติโรคความดันโลหิตสูงในญาติสายตรง"
* ^url = $SD_Observation_NcdFamHT
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#social-history (exactly)
* code.coding[code43Plus] = $SCT#160357008 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)