Profile: Moph43pObservationPregContraceptionReason
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-contraception-reason
Title: "MoPH43p Observation: Pregnancy-Contraception Reason"
Description: "สาเหตุที่ไม่คุมกำเนิด"
* ^url = $SD_Observation_PregContraceptionReason
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#86650-9 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_NoContraceptive (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_NoContraceptive (exactly)
