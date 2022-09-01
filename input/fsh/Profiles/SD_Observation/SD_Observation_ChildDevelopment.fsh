Profile: Moph43pObservationChildDevelopment
Parent: Observation
Id: moph43p-observation-child-development
Title: "MoPH43p Observation: Child Development"
Description: "ข้อมูลการตรวจวัดระดับโภชนาการและพัฒนาการ"
* ^url = $SD_Observation_ChildDevelopment
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    nutrition 1..1 MS
* code.coding[nutrition] from $VS_Meta_ChildDevelopment (extensible)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] MS