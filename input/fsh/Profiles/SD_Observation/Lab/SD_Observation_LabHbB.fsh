Profile: MophPcObservationLabHbB
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-hepatitis-b
Title: "MoPH-PC Observation: Lab-Hepatitis B"
Description: "ผลการตรวจ Hepatitis B"
* ^url = $SD_Observation_LabHbB
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#16935-9
* code.coding[tmlt] = $CS_TMLT#350494
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS and
    snomed 0..1
* valueCodeableConcept.coding[thcc] from $VS_Meta_ScreeningResult (extensible)
* valueCodeableConcept.coding[thcc].system 1..
* valueCodeableConcept.coding[thcc].system = $CS_Meta_ScreeningResult (exactly)
* valueCodeableConcept.coding[thcc].code 1..
* valueCodeableConcept.coding[snomed].system 1..
* valueCodeableConcept.coding[snomed].system = $SCT (exactly)
* valueCodeableConcept.coding[snomed].code 1..