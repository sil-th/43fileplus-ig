Profile: Moph43pObservationNcdRetina
Parent: $SD_Observation_NcdBase
Id: moph43p-observation-ncd-retina
Title: "MoPH43p Observation: NCD Retina Exam"
Description: "การตรวจจอประสาทตา"
* ^url = $SD_Observation_NcdRetina
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #134395001 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_NcdRetinaExam (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_NcdRetinaExam (exactly)