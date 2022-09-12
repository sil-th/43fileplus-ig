Profile: Moph43pObservationDeathPregnancy
Parent: Observation
Id: moph43p-observation-death-pregnancy
Title: "MoPH43p Observation: Death Pregnancy"
Description: "สภาวะการตั้งครรภ์และการคลอด ขณะเสียชีวิต"
* ^url = $SD_Observation_DeathPregnancy
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category MS
* category.coding = $CS_HL7_ObservationCat#exam (exactly)
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..1 MS
* code.coding[loinc] = $LNC#69442-2 (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_DeathPregnancy (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_DeathPregnancy (exactly)
