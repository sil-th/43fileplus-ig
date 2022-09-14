Profile: Moph43pObservationAccIV
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-iv-fluid
Title: "MoPH43p Observation: Accident-IV"
Description: "การให้น้ำเกลือ"
* ^url = $SD_Observation_AccidentIV
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $CS_Meta_AccidentObs (exactly)
  * code 1..1 MS
  * code = #iv-fluid (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_THCC_AccidentIVFluid (extensible)
* valueCodeableConcept.coding.system = $CS_THCC_AccidentIVFluid (exactly)

