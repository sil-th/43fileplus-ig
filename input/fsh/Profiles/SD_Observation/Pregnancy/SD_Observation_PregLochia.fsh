Profile: Moph43pObservationPregLochia
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-lochia
Title: "MoPH43p Observation: Pregnancy-Lochia"
Description: "ลักษณะน้ำคาวปลา"
* ^url = $SD_Observation_PregLochia
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #289576005 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)