Profile: Moph43pMedication
Parent: Medication
Id: moph43p-medication
Title: "Medication (MoPH43p)"
Description: "ยา"
* ^url = $SD_Medication
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_TH_MedImage named image 0..*
* extension[image] ^min = 0
* code 1.. MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    24-digit 0..1 MS and
    tmt 0..1 MS and
    local 0..1 MS
* code.coding[24-digit] ^short = "รหัสยามาตรฐาน 24 หลัก"
* code.coding[24-digit].system 1..
* code.coding[24-digit].system = $CS_24Drug (exactly)
* code.coding[24-digit].code 1..
* code.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* code.coding[tmt].system 1..
* code.coding[tmt].system = $CS_TMT (exactly)
* code.coding[tmt].code 1..
* code.coding[local] ^short = "รหัสยาของสถานพยาบาล"
* code.coding[local].system 1..
* code.coding[local].system obeys Drug-uri
* code.coding[local].system ^example.label = "Drug namespace"
* code.coding[local].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/Drug"
* code.coding[local].code 1..
* form MS
* form.coding ^slicing.discriminator.type = #value
* form.coding ^slicing.discriminator.path = "system"
* form.coding ^slicing.rules = #open
* form.coding contains
    snomed 0..1 and
    edqm 0..1
* form.coding[snomed] from $VS_SNOMEDCT_FormCodes (extensible)
* form.coding[snomed].system 1..
* form.coding[snomed].system = $SCT (exactly)
* form.coding[snomed].code 1..
* form.coding[edqm] from $VS_IPS_MedicineSoseform (extensible)
* form.coding[edqm].system 1..
* form.coding[edqm].system = $EDQM (exactly)
* form.coding[edqm].code 1..
* amount 1.. MS

