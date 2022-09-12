Profile: Moph43pObservationAccidentBase
Parent: Observation
Id: moph43p-observation-accident-base
Title: "MoPH43p Observation: Accident"
Description: "ข้อมูลการตรวจโรคและอาการในกลุ่ม Accident"
* ^url = $SD_Observation_AccidentBase
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains hl7 0..1
* category[hl7].coding from $VS_HL7_ObservationCat (extensible)
* code MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    code43Plus 1..1 MS
* code.coding[code43Plus] from $VS_Meta_Accident_ObsList (extensible)
* subject 1.. MS
* subject only Reference($SD_Patient_Base)
* effective[x] MS
* effective[x] ^short = "วัน-เวลาที่ตรวจ/ประเมินผล"
* value[x] MS
* interpretation MS
* note MS