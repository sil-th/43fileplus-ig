Profile: Moph43pObservationPregNausea
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-nausea
Title: "MoPH43p Observation: Pregnancy-Nausea"
Description: "อาการคลื่นใส้"
* ^url = $SD_Observation_PregNausea
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#81660-3 (exactly)
* value[x] only string

