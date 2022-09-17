Profile: Moph43pConditionNCD
Parent: $SD_Condition_Base
Id: moph43p-condition-ncd
Title: "MoPH43p Condition: NCD"
Description: "ข้อมูลวินิจฉัย/ภาวะโรค สำหรับโรคในกลุ่ม NCD"
* ^url = $SD_Condition_NCD
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code ^short = "รหัสวินิฉัยโรค/ภาวะโรค"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    ncdStatus 0..1 MS
* code.coding[ncdStatus] from $VS_43Plus_NcdStatus (required)
* code.coding[ncdStatus].system 1..
* code.coding[ncdStatus].system = $CS_43Plus_NcdStatus (exactly)
* code.coding[ncdStatus].code 1..