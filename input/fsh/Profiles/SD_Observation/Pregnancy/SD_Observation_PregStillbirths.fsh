Profile: Moph43pObservationPregStillbirths
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-stillbirths
Title: "MoPH43p Observation: Pregnancy-Stillbirth"
Description: "จำนวนตายคลอด"
* ^url = $SD_Observation_PregStillbirths
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #57062-2 (exactly)
* value[x] only integer
