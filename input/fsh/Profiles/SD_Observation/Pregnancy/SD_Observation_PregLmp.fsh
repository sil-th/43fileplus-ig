Profile: Moph43pObservationPregLMP
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-last-menstrual-period
Title: "MoPH43p Observation: Pregnancy-LMP"
Description: "วันแรกของการมีประจำเดือนครั้งสุดท้าย"
* ^url = $SD_Observation_PregLmp
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #8665-2 (exactly)
* value[x] only dateTime