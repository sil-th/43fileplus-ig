Profile: MophPcObservationLabBloodABO
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-blood-abo
Title: "MoPH43p Observation: Lab-Blood group ABO"
Description: "ผลการตรวจหมู่เลือด ABO"
* ^url = $SD_Observation_LabBloodAbo
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#883-9
* value[x] only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    snomed 0..1 MS
* valueCodeableConcept.coding[snomed] from $VS_SNOMED_ABO (extensible)
* valueCodeableConcept.coding[snomed].system = $SCT (exactly)