Profile: Moph43pObservationNeonateVitaminK
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-vitamink
Title: "MoPH43p Observation: Neonate Vitamin K"
Description: "ได้รับ VIT K หรือไม่"
* ^url = $SD_Observation_NeonateVitaminK
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #414955000 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)