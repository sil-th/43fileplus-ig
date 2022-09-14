Profile: Moph43pObservationAccDrug
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-drug
Title: "MoPH43p Observation: Accident-Drug"
Description: "การใช้ยาสารเสพติดขณะเกิดอุบัติเหตุ"
* ^url = $SD_Observation_AccidentDrug
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #74204-9 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)

