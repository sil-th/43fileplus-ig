Profile: Moph43pObservationPregContraceptionUse
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-contraception-use
Title: "MoPH43p Observation: Pregnancy-Contraception Use"
Description: "รหัสวิธีการคุมกำเนิดปัจจุบัน"
* ^url = $SD_Observation_PregContraceptionUse
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#86649-1 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_ContraceptiveMethod (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_ContraceptiveMethod (exactly)

