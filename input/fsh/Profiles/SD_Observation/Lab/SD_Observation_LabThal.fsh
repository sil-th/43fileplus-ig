Profile: Moph43pObservationLabThal
Parent: $SD_Observation_LabBase
Id: moph43p-observation-lab-thalassaemia
Title: "MoPH43p Observation: Lab-Thal"
Description: "ผลการตรวจคัดกรอง Thalassaemia"
* ^url = $SD_Observation_LabThal
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[snomed] = $SCT#252290000
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_Meta_ScreeningResult (extensible)
* valueCodeableConcept.coding.system = $CS_Meta_ScreeningResult (exactly)
