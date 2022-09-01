Profile: Moph43pObservationFunctional
Parent: Observation
Id: moph43p-observation-functional
Title: "MoPH43p Observation: Functional"
Description: "การประเมินความบกพร่อง"
* ^url = $SD_Observation_Functional
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    thcc 1..1 MS
* code.coding[thcc] ^sliceName = "thcc"
* code.coding[thcc] ^mustSupport = true
* code.coding[thcc].system = $CS_THCC_FunctionalTest (exactly)
* code.coding[thcc].code = #01 (exactly)
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
* value[x] MS
* value[x] only integer