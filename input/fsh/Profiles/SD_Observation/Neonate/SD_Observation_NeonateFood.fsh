Profile: Moph43pObservationNeonate
Parent: $SD_Observation_NeonateBase
Id: TEMP
Title: "MoPH43p Observation: Neonate Food"
Description: "อาหารที่รับประทาน"
* ^url = $SD_Observation_NeonateFood
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[newborn].system = $SCT (exactly)
* code.coding[newborn].code = #226379006 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_NewbornFood (extensible)
* valueCodeableConcept.coding[thcc].system 1..
* valueCodeableConcept.coding[thcc].system = $CS_THCC_NewbornFood (exactly)
* valueCodeableConcept.coding[thcc].code 1..