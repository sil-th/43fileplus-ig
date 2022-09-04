Profile: Moph43pObservationNcdRetina
Parent: $SD_Observation_NcdBase
Id: moph43p-observation-ncd-retina
Title: "MoPH43p Observation: NCD Retina Exam"
Description: "การตรวจจอประสาทตา"
* ^url = $SD_Observation_NcdRetina
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#134395001 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_NcdRetinaExam (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_NcdRetinaExam (exactly)