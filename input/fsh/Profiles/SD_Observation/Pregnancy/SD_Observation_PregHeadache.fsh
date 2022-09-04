Profile: Moph43pObservationPregHeadache
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-headache
Title: "MoPH43p Observation: Pregnancy-Headache"
Description: "อาการปวดศรีษะ"
* ^url = $SD_Observation_PregHeadache
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#45715-0 (exactly)
* value[x] only string
