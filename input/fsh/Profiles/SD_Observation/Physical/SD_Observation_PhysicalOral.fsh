Profile: Moph43pObservationPhysicalOral
Parent: $SD_Observation_PhysicalBase
Id: moph43p-observation-physical-oral
Title: "MoPH43p Observation: Physical-Oral"
Description: "สถานะการตรวจสุขภาพปาก/ฟัน"
* ^url = $SD_Observation_PhysicalOral
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #122856003 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)
