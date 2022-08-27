Profile: Moph43pObservationVital
Parent: Observation
Id: moph43p-observation-vital
Title: "Observation - Vital (MoPH43p)"
Description: "ข้อมูลการตรวจสัญญาณชีพ"
* ^url = $SD_Observation_Vital
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains VSCat 1..1
* category[VSCat].coding.system 1..
* category[VSCat].coding.system = $CS_HL7_ObservationCat (exactly)
* category[VSCat].coding.code 1..
* category[VSCat].coding.code = #vital-signs (exactly)
* code MS
* code ^short = "รหัสการตรวจสัญญาณชีพ"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..1 and
    snomed 0..1
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] MS
* value[x] ^short = "ผลของการตรวจสัญญาณชีพ"