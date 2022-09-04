Profile: Moph43pObservationPregGeneralSymptom
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-general-symptom
Title: "MoPH43p Observation: Pregnancy-General Symptom"
Description: "อาการผิดปกติจากการมาตรวจครั้งแรก"
* ^url = $SD_Observation_PregGeneralSymptom
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#75322-8 (exactly)
* value[x] only string
