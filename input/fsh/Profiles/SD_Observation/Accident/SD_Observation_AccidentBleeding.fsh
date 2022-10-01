Profile: MophPcObservationAccBleeding
Parent: $SD_Observation_AccidentBase
Id: mophpc-observation-accident-bleeding
Title: "MoPH-PC Observation: Accident-Bleeding"
Description: "การห้ามเลือด"
* ^url = $SD_Observation_AccidentBleeding
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $CS_Meta_AccidentObs (exactly)
  * code 1..1 MS
  * code = #stop-bleed (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_AccidentBleeding (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_AccidentBleeding (exactly)