Profile: Moph43pObservationPhysicalNipple
Parent: $SD_Observation_PhysicalBase
Id: moph43p-observation-physical-nipple
Title: "MoPH43p Observation: Physical-Nipple"
Description: "สภาพหัวนม"
* ^url = $SD_Observation_PhysicalNipple
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $SCT#364376001 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)
