Profile: Moph43pObservationNcdGestDMHx
Parent: $SD_Observation_NcdBase
Id: moph43p-observation-ncd-gest-dm-hx
Title: "MoPH43p Observation: NCD Gestational DM Hx"
Description: "ประวัติเป็นเบาหวานขณะตั้งครรภ์"
* ^url = $SD_Observation_NcdGestDMHx
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #472971004 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)