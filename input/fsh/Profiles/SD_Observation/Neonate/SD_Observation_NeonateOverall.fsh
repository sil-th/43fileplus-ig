Profile: Moph43pObservationNeonateOverall
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-overall
Title: "MoPH43p Observation: Neonate Overall"
Description: "ผลการตรวจทารกหลังคลอด"
* ^url = $SD_Observation_NeonateOverall
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #249222005 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)
