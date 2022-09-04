Profile: Moph43pObservationCancerGrading
Parent: Observation
Id: moph43p-observation-cancer-grading
Title: "MoPH43p Observation: Cancer-Grading"
Description: "ผลการบันทึกระดับความรุนแรงของชิ้นเนื้อ"
* ^url = $SD_Observation_CancerGrading
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category MS
* category.coding = $CS_HL7_ObservationCat#procedure (exactly)
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..1 MS
* code.coding[loinc] = $LNC#33732-9 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_43Plus_CancerGrade (extensible)
* valueCodeableConcept.coding[thcc].system 1..
* valueCodeableConcept.coding[thcc].system = $CS_43Plus_CancerGrade (exactly)
* valueCodeableConcept.coding[thcc].code 1..

