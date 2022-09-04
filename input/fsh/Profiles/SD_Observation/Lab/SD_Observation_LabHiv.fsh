Profile: Moph43pObservationLabHIV
Parent: $SD_Observation_LabBase
Id: moph43p-observation-lab-hiv
Title: "MoPH43p Observation: Lab-HIV"
Description: "ผลการตรวจ HIV"
* ^url = $SD_Observation_LabHiv
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#55277-8 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_Meta_ScreeningResult (extensible)
* valueCodeableConcept.coding.system = $CS_Meta_ScreeningResult (exactly)