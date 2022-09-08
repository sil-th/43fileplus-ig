Profile: Moph43pObservationAccAlcohol
Parent: $SD_Observation_AccidentBase
Id: moph43p-observation-accident-alcohol
Title: "MoPH43p Observation: Accident-Alcohol"
Description: "การดื่มแอลกอฮอลขณะเกิดอุบัติเหตุ"
* ^url = $SD_Observation_AccidentAlcohol
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#74205-6 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)