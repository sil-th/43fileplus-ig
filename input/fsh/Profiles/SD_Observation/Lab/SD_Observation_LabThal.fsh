Profile: MophPcObservationLabThal
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-thalassaemia
Title: "MoPH43p Observation: Lab-Thal"
Description: "ผลการตรวจคัดกรอง Thalassaemia"
* ^url = $SD_Observation_LabThal
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[snomed] = $SCT#252290000
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    hl7 0..1 MS and
    43plus 0..1 MS
* valueCodeableConcept.coding[hl7] from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding[hl7].system = $CS_HL7_ObsInterpret (exactly)
* valueCodeableConcept.coding[43plus] from $VS_Meta_ScreeningResult (extensible)
* valueCodeableConcept.coding[43plus].system = $CS_Meta_ScreeningResult (exactly)


