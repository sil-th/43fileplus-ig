Profile: Moph43pObservationLabProteinStrip
Parent: $SD_Observation_LabBase
Id: moph43p-observation-lab-protein-strip
Title: "MoPH43p Observation: Lab-Protein Strip"
Description: "ระดับโปรตีนในปัสสาวะ"
* ^url = $SD_Observation_LabProteinStrip
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#5804-0
* value[x] only CodeableConcept or integer
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)
