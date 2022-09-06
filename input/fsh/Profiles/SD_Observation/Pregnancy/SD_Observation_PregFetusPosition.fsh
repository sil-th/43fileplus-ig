Profile: Moph43pObservationPregFetusPosition
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-fetus-position
Title: "MoPH43p Observation: Pregnancy-Fetus Position"
Description: "ท่าเด็ก"
* ^url = $SD_Observation_PregFetusPosition
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#72155-5 (exactly)
* value[x] only string

