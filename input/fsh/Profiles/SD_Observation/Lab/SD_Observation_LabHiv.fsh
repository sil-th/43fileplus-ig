Profile: MophPcObservationLabHIV
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-hiv
Title: "MoPH-PC Observation: Lab-HIV"
Description: "ผลการตรวจ HIV"
* ^url = $SD_Observation_LabHiv
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#55277-8
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    43plus 0..1 MS
* valueCodeableConcept.coding[43plus] from $VS_Meta_ScreeningResult (extensible)
* valueCodeableConcept.coding[43plus].system = $CS_Meta_ScreeningResult (exactly)

