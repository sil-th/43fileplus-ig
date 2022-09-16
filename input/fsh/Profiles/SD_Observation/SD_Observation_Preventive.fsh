Profile: Moph43pObservationSpecialPP
Parent: Observation
Id: moph43p-observation-special-pp
Title: "MoPH43p Observation: SpecialPP"
Description: "บริการส่งเสริมสุขภาพป้องกันโรคเฉพาะ"
* ^url = $SD_Observation_SpecialPP
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains hl7 1..1 MS
* category[hl7] = $CS_HL7_ObservationCat#exam
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    code43Plus 1..1 MS
* code.coding[code43Plus] from $VS_THCC_SpecialPPService (extensible)
* code.coding[code43Plus].system = $CS_THCC_SpecialPPService (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
