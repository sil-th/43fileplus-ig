Profile: Moph43pObservationPregContraceptionReason
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-contraception-reason
Title: "MoPH43p Observation: Pregnancy-Contraception Reason"
Description: "สาเหตุที่ไม่คุมกำเนิด"
* ^url = $SD_Observation_PregContraceptionReason
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #86650-9 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_NoContraceptive (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_NoContraceptive (exactly)