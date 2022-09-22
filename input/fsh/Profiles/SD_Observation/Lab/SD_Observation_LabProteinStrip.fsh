Profile: MophPcObservationLabProteinStrip
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-protein-strip
Title: "MoPH43p Observation: Lab-Protein Strip"
Description: "ระดับโปรตีนในปัสสาวะ"
* ^url = $SD_Observation_LabProteinStrip
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#5804-0
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueCodeableConcept 0..1 MS
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    hl7 0..1 MS
* valueCodeableConcept.coding[hl7] from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding[hl7].system = $CS_HL7_ObsInterpret (exactly)
* valueInteger 0..1 MS