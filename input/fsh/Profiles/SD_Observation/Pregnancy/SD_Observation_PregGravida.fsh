Profile: Moph43pObservationPregGravida
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-gravida
Title: "MoPH43p Observation: Pregnancy-Gravida"
Description: "ครรภ์ที่"
* ^url = $SD_Observation_PregGravida
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#11996-6 (exactly)
* value[x] only integer
