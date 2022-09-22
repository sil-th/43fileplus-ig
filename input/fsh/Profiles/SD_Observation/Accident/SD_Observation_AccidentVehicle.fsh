Profile: MophPcObservationAccVehicle
Parent: $SD_Observation_AccidentBase
Id: mophpc-observation-accident-vehicle
Title: "MoPH43p Observation: Accident-Vehicle"
Description: "ประเภทยานพาหนะที่เกิดเหตุ"
* ^url = $SD_Observation_AccidentVehicle
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $CS_Meta_AccidentObs (exactly)
  * code 1..1 MS
  * code = #vehicle (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_AccidentVehicle (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_AccidentVehicle (exactly)
