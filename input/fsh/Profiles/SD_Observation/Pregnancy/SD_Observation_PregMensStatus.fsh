Profile: Moph43pObservationPregMensStatus
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-mens-status
Title: "MoPH43p Observation: Pregnancy-MensStatus"
Description: "ภาวะประจำเดือน"
* ^url = $SD_Observation_PregMensStatus
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#3146-8 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_PCU_PostnatalMens (extensible)
* valueCodeableConcept.coding.system = $CS_PCU_PostnatalMens (exactly)

