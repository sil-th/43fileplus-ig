Profile: Moph43pObservationFunctionalConclusion
Parent: Observation
Id: moph43p-observation-functional-conclusion
Title: "MoPH43p Observation: Functional Conclusion"
Description: "สรุปภาวะพึ่งพิง"
* ^url = $SD_Observation_FunctionalConclusion
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category MS
* category.coding = $CS_HL7_ObservationCat#survey (exactly)
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..1 MS
* code.coding[loinc] = $LNC#75276-6 (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_FunctionalConclusion (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_FunctionalConclusion (exactly)
