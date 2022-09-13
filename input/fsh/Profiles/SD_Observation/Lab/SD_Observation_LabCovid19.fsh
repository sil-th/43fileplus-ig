Profile: Moph43pObservationLabCovid19
Parent: $SD_Observation_LabBase
Id: moph43p-observation-lab-covid19
Title: "MoPH43p Observation: Lab-Covid19"
Description: "ผลการตรวจ Lab Covid"
* ^url = $SD_Observation_LabCovid19
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[snomed] = $SCT#871562009
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)
