Profile: Moph43pObservationCauseOfDeath
Parent: Observation
Id: moph43p-observation-cause-of-death
Title: "Observation - COD (MoPH43p)"
Description: "ข้อมูลการเสียชีวิต"
* ^url = $SD_Observation_CauseOfDeath
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loinc 0..1
* code.coding[loinc].system 1..
* code.coding[loinc].system = $LNC (exactly)
* code.coding[loinc].code 1..
* code.coding[loinc].code = #79378-6 (exactly)
* subject 1.. MS
* subject only Reference($SD_Patient)
* effective[x] MS
* value[x] only CodeableConcept
* value[x] MS
* value[x].coding ^slicing.discriminator.type = #value
* value[x].coding ^slicing.discriminator.path = "system"
* value[x].coding ^slicing.rules = #open
* value[x].coding contains
    snomed 0..1 and
    icd10 0..1 MS
* value[x].coding[snomed].system 1..
* value[x].coding[snomed].system = $SCT (exactly)
* value[x].coding[snomed].code 1..
* value[x].coding[icd10].system 1..
* value[x].coding[icd10].system = $ICD10 (exactly)
* value[x].coding[icd10].code 1..