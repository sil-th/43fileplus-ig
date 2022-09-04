Profile: Moph43pObservationNeonateFood
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-food
Title: "MoPH43p Observation: Neonate Food"
Description: "อาหารที่รับประทาน"
* ^url = $SD_Observation_NeonateFood
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#226379006 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_NewbornFood (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_NewbornFood (exactly)
