Profile: MophPcObservationLabBloodRH
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-blood-rh
Title: "MoPH-PC Observation: Lab-Blood group Rh"
Description: "ผลการตรวจหมู่เลือด Rh"
* ^url = $SD_Observation_LabBloodRh
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#10331-7
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    snomed 0..1 MS
* valueCodeableConcept.coding[snomed] from $VS_SNOMED_Rh (extensible)
* valueCodeableConcept.coding[snomed].system = $SCT (exactly)