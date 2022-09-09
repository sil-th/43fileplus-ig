Profile: Moph43pObservationLabGlucoseStrip
Parent: $SD_Observation_LabBase
Id: moph43p-observation-lab-glucose-strip
Title: "MoPH43p Observation: Lab-Glucose Strip"
Description: "ระดับน้ำตาลในปัสสาวะ"
* ^url = $SD_Observation_LabGlucoseStrip
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#5792-7 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)

