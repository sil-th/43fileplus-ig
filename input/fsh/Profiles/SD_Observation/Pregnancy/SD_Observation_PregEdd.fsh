Profile: MophPcObservationPregEdd
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-estimated-delivery
Title: "MoPH43p Observation: Pregnancy-EDD"
Description: "วันที่กำหนดคลอด"
* ^url = $SD_Observation_PregEdd
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #11778-8 (exactly)
* value[x] only dateTime
