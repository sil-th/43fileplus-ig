Profile: MophPcObservationPregContraceptionUse
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-contraception-use
Title: "MoPH-PC Observation: Pregnancy-Contraception Use"
Description: "รหัสวิธีการคุมกำเนิดปัจจุบัน"
* ^url = $SD_Observation_PregContraceptionUse
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #86649-1 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  thcc1 0..1 MS
* valueCodeableConcept.coding[thcc1] from $VS_THCC_ContraceptiveMethod (extensible)
* valueCodeableConcept.coding[thcc1].system = $CS_THCC_ContraceptiveMethod (exactly)