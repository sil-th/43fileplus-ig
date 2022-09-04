Profile: Moph43pObservationNeonateBase
Parent: Observation
Id: moph43p-observation-neonatal-base
Title: "MoPH43p Observation: Neonate"
Description: "ข้อมูลการตรวจประเมินทารกแรกคลอด"
* ^url = $SD_Observation_NeonateBase
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains hl7 0..1
* category[hl7].coding from $CS_HL7_ObservationCat (required)
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    code43Plus 1..1 MS
* code.coding[code43Plus] from $VS_Meta_Neonate_ObsList (extensible)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
* interpretation MS
* note MS