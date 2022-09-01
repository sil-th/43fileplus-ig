Profile: Moph43pObservationSpecialPP
Parent: Observation
Id: moph43p-observation-special-pp
Title: "MoPH43p Observation: SpecialPP"
Description: "บริการส่งเสริมสุขภาพป้องกันโรคเฉพาะ"
* ^url = $SD_Observation_SpecialPP
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    ppService 1..1 MS
* code.coding[ppService] from $VS_THCC_SpecialPPService (extensible)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* effective[x] only dateTime
* effective[x] ^slicing.discriminator[0].type = #type
* effective[x] ^slicing.discriminator[=].path = "$this"
* effective[x] ^slicing.rules = #open
* effective[x] contains
    effectiveDateTime 1..1 MS
* effective[effectiveDateTime] 
* effectiveDateTime only dateTime
* effectiveDateTime ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* effectiveDateTime MS