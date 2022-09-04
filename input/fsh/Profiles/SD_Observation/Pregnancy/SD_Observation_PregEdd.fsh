Profile: Moph43pObservationPregEdd
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-estimated-delivery
Title: "MoPH43p Observation: Pregnancy-EDD"
Description: "วันที่กำหนดคลอด"
* ^url = $SD_Observation_PregEdd
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#11778-8 (exactly)
* value[x] only dateTime
