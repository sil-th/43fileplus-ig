Profile: MophPcObservationAccBreating
Parent: $SD_Observation_AccidentBase
Id: mophpc-observation-accident-breathing
Title: "MoPH-PC Observation: Accident-Breathing"
Description: "การดูแลการหายใจ"
* ^url = $SD_Observation_AccidentBreathing
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $CS_Meta_AccidentObs (exactly)
  * code 1..1 MS
  * code = #breathing (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_AccidentBreathing (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_AccidentBreathing (exactly)
