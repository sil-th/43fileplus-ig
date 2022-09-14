Profile: Moph43pObservationPregMensStatus
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-mens-status
Title: "MoPH43p Observation: Pregnancy-MensStatus"
Description: "ภาวะประจำเดือน"
* ^url = $SD_Observation_PregMensStatus
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #3146-8 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    pcu 0..1 MS
* valueCodeableConcept.coding[pcu] from $VS_PCU_PostnatalMens (extensible)
* valueCodeableConcept.coding[pcu].system = $CS_PCU_PostnatalMens (exactly)
