Profile: Moph43pObservationPregAncPeriod
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-anc-period
Title: "MoPH43p Observation: Pregnancy-Anc Period"
Description: "ช่วงของการ ANC"
* ^url = $SD_Observation_PregAncPeriod
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $CS_Meta_MiscPregnancyObs (exactly)
  * code 1..1 MS
  * code = #ancperiod (exactly)
* value[x] only integer
