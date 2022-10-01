Profile: MophPcObservationChildBottleFeed
Parent: $SD_Observation_ChildBase
Id: mophpc-observation-child-bottle-feed
Title: "MoPH-PC Observation: Child-Bottle Feed"
Description: "การใช้ขวดนม"
* ^url = $SD_Observation_ChildBottleFeed
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #268472006 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    hl7 0..1 MS
* valueCodeableConcept.coding[hl7] from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding[hl7].system = $CS_HL7_YesNo (exactly)
