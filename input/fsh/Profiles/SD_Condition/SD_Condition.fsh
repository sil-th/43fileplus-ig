Profile: Moph43pConditionBase
Parent: Condition
Id: moph43p-condition-base
Title: "MoPH43p Condition"
Description: "ข้อมูลวินิจฉัย/ภาวะโรค"
* ^url = $SD_Condition_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category MS
* code MS
* code ^short = "รหัสวินิฉัยโรค/ภาวะโรค"
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10 0..1 MS and
    snomed 0..1
* code.coding[icd10].system 1..
* code.coding[icd10].system = $ICD10 (exactly)
* code.coding[icd10].code 1..
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* subject only Reference($SD_Patient)
* subject MS
* onset[x] MS
* recordedDate MS
* recorder only Reference($SD_Practitioner)
* recorder MS
* note MS