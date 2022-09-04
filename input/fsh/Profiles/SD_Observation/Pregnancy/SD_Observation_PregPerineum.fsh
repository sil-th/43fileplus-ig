Profile: Moph43pObservationPregPerineum
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-perineum
Title: "MoPH43p Observation: Pregnancy-Perineum"
Description: "การตรวจฝีเย็บ"
* ^url = $SD_Observation_PregPerineum
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#364297003 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_PCU_PostnatalPerineum (extensible)
* valueCodeableConcept.coding.system = $CS_PCU_PostnatalPerineum (exactly)

