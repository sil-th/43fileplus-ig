Profile: Moph43pObservationPregLMP
Parent: Observation
Id: moph43p-observation-preg-last-menstrual-period
Title: "MoPH43p Observation: Pregnancy-LMP"
Description: "วันแรกของการมีประจำเดือนครั้งสุดท้าย"
* ^url = $SD_Observation_PregLmp
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
* category contains Exam 1..1
* category[Exam].coding.system 1..
* category[Exam].coding.system = $CS_HL7_ObservationCat (exactly)
* category[Exam].coding.code 1..
* category[Exam].coding.code = #exam (exactly)
* code MS
* code ^short = "รหัสการตรวจร่างกาย"
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..1 MS and
    snomed 0..1
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* code.coding[loinc].code = #8665-2 (exactly)
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* code.coding[snomed].code = #21840007 (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] only dateTime
* value[x] MS
* value[x] ^short = "ผลการตรวจร่างกาย"