Profile: Moph43pObservationPregAbortions
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-abortions
Title: "MoPH43p Observation: Pregnancy-Abortions"
Description: "จำนวนการแท้งบุตร"
* ^url = $SD_Observation_PregAbortions
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #11612-9 (exactly)
* value[x] only integer