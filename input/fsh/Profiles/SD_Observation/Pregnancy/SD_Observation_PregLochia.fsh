Profile: Moph43pObservationPregLochia
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-lochia
Title: "MoPH43p Observation: Pregnancy-Lochia"
Description: "ลักษณะน้ำคาวปลา"
* ^url = $SD_Observation_PregLochia
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#laboratory (exactly)
* code.coding[code43Plus] = $SCT#289576005 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)