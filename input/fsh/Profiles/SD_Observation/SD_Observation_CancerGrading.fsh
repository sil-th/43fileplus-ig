Profile: MophPcObservationCancerGrading
Parent: Observation
Id: mophpc-observation-cancer-grading
Title: "MoPH43p Observation: Cancer-Grading"
Description: "ผลการบันทึกระดับความรุนแรงของชิ้นเนื้อ"
* ^url = $SD_Observation_CancerGrading
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains hl7 1..1 MS
* category[hl7] = $CS_HL7_ObservationCat#procedure
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..1 MS
* code.coding[loinc]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #33732-9 (exactly)
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

