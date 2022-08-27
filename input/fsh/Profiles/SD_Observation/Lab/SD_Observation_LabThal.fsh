Profile: Moph43pObservationLabThal
Parent: $SD_Observation_Lab
Id: moph43p-observation-lab-thalassaemia
Title: "MoPH43p Observation: Thal"
Description: "ผลการตรวจ Thalassaemia"
* ^url = $SD_Observation_LabThal
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[snomed] ^sliceName = "snomed"
* code.coding[snomed] ^mustSupport = true
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code = #252290000 (exactly)
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