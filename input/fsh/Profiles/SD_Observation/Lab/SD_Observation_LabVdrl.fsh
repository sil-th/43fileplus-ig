Profile: Moph43pObservationLabVdrl
Parent: $SD_Observation_LabBase
Id: moph43p-observation-lab-vdrl
Title: "MoPH43p Observation: Lab-VDRL"
Description: "ผลการตรวจ VDRL"
* ^url = $SD_Observation_LabVdrl
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#5292-8
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_Meta_ScreeningResult (extensible)
* valueCodeableConcept.coding.system = $CS_Meta_ScreeningResult (exactly)

