Profile: Moph43pObservationPregPostnatalStatus
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-postnatal-status
Title: "MoPH43p Observation: Pregnancy-Postnatal Status"
Description: "ผลการตรวจมารดาหลังคลอด"
* ^url = $SD_Observation_PregPostnatalStatus
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#laboratory (exactly)
* code.coding[code43Plus] = $SCT#304598004 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)

