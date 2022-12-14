Profile: MophPcObservationPregLiveDeliveries
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-live-deliveries
Title: "MoPH-PC Observation: Pregnancy-Live delivery"
Description: "จำนวนเกิดมีชีพ"
* ^url = $SD_Observation_PregLiveDeliveries
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #11636-8 (exactly)
* value[x] only integer
