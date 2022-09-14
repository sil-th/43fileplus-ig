Profile: Moph43pObservationPregDeliveryDate
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-delivery-date
Title: "MoPH43p Observation: Pregnancy-Delivery Date"
Description: "วันคลอด / วันสิ้นสุดการตั้งครรภ์"
* ^url = $SD_Observation_PregDeliveryDate
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #93857-1 (exactly)
* value[x] only dateTime
