Profile: Moph43pObservationLabHbB
Parent: $SD_Observation_Lab
Id: moph43p-observation-lab-hepatitis-b
Title: "MoPH43p Observation: Lab-Hepatitis B"
Description: "ผลการตรวจ Hepatitis B"
* ^url = $SD_Observation_LabHbB
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #16935-9 (exactly)
* code.coding[tmlt] ^sliceName = "tmlt"
* code.coding[tmlt].code = #350494 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS and
    snomed 0..1
* valueCodeableConcept.coding[thcc] from $VS_THCC_ScreeningResult (extensible)
* valueCodeableConcept.coding[thcc].system 1..
* valueCodeableConcept.coding[thcc].system = $CS_THCC_ScreeningResult (exactly)
* valueCodeableConcept.coding[thcc].code 1..
* valueCodeableConcept.coding[snomed].system 1..
* valueCodeableConcept.coding[snomed].system = $SCT (exactly)
* valueCodeableConcept.coding[snomed].code 1..