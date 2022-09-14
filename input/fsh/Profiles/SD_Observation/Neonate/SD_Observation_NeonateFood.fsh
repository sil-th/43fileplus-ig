Profile: Moph43pObservationNeonateFood
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-food
Title: "MoPH43p Observation: Neonate Food"
Description: "อาหารที่รับประทาน"
* ^url = $SD_Observation_NeonateFood
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #226379006 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  neonate 0..1 MS and
  child 0..1 MS
* valueCodeableConcept.coding[neonate] from $VS_THCC_NewbornFood (extensible)
* valueCodeableConcept.coding[neonate].system = $CS_THCC_NewbornFood (exactly)
* valueCodeableConcept.coding[child] from $VS_THCC_ChildFood (extensible)
* valueCodeableConcept.coding[child].system = $CS_THCC_ChildFood (exactly)
