Profile: Moph43pObservationNeonateAsphyxia
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-asphyxia
Title: "MoPH43p Observation: Neonate Asphyxia"
Description: "ภาวะการณ์ขาดออกซิเจน"
* ^url = $SD_Observation_NeonateAsphyxia
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[newborn].system = $SCT (exactly)
* code.coding[newborn].code = #413654009 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding[thcc].system 1..
* valueCodeableConcept.coding[thcc].system = $CS_HL7_YesNo (exactly)
* valueCodeableConcept.coding[thcc].code 1..