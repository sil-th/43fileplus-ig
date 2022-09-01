Profile: Moph43pObservationNeonateOverall
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-overall
Title: "MoPH43p Observation: Neonate Overall"
Description: "ผลการตรวจทารกหลังคลอด"
* ^url = $SD_Observation_NeonateOverall
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[newborn].system = $SCT (exactly)
* code.coding[newborn].code = #249222005 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding[thcc].system 1..
* valueCodeableConcept.coding[thcc].system = $CS_HL7_ObsInterpret (exactly)
* valueCodeableConcept.coding[thcc].code 1..