Profile: Moph43pObservationChildBottleFeed
Parent: $SD_Observation_ChildBase
Id: moph43p-observation-child-bottle-feed
Title: "MoPH43p Observation: Child-Bottle Feed"
Description: "การใช้ขวดนม"
* ^url = $SD_Observation_ChildBottleFeed
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH

* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#268472006 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)
