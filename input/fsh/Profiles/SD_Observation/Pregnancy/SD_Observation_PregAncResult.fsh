Profile: Moph43pObservationPregAncResult
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-anc-result
Title: "MoPH43p Observation: Pregnancy-Anc Result"
Description: "ผลการตรวจ ANC"
* ^url = $SD_Observation_PregAncResult
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#laboratory (exactly)
* code.coding[code43Plus] = $SCT#313199003 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)