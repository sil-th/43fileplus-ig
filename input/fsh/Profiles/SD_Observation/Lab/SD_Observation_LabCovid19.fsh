Profile: MophPcObservationLabCovid19
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-covid19
Title: "MoPH43p Observation: Lab-Covid19"
Description: "ผลการตรวจ Lab Covid"
* ^url = $SD_Observation_LabCovid19
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[snomed] = $SCT#871562009
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    hl7 0..1 MS
* valueCodeableConcept.coding[hl7] from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding[hl7].system = $CS_HL7_ObsInterpret (exactly)