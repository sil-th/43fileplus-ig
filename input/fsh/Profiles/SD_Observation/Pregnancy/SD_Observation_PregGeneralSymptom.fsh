Profile: MophPcObservationPregGeneralSymptom
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-general-symptom
Title: "MoPH-PC Observation: Pregnancy-General Symptom"
Description: "อาการผิดปกติจากการมาตรวจครั้งก่อนหน้า"
* ^url = $SD_Observation_PregGeneralSymptom
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #75322-8 (exactly)
* value[x] only string
