Profile: Moph43pObservationChildDevelopment
Parent: $SD_Observation_ChildBase
Id: moph43p-observation-child-development
Title: "MoPH43p Observation: Child-Development"
Description: "ระดับพัฒนาการเด็ก"
* ^url = $SD_Observation_ChildDevelopment
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #406207000 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_ChildDevLevel (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_ChildDevLevel (exactly)