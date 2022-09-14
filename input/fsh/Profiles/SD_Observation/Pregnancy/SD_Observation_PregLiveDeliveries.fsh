Profile: Moph43pObservationPregLiveDeliveries
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-live-deliveries
Title: "MoPH43p Observation: Pregnancy-Live delivery"
Description: "จำนวนเกิดมีชีพ"
* ^url = $SD_Observation_PregLiveDeliveries
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #11636-8 (exactly)
* value[x] only integer
