Profile: Moph43pObservationNcdFoot
Parent: $SD_Observation_NcdBase
Id: moph43p-observation-ncd-foot
Title: "MoPH43p Observation: NCD Foot Exam"
Description: "การตรวจเท้า"
* ^url = $SD_Observation_NcdFoot
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#394683006 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_NcdFootExam (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_NcdFootExam (exactly)