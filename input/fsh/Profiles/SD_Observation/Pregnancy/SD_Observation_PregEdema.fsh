Profile: Moph43pObservationPregEdema
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-edema
Title: "MoPH43p Observation: Pregnancy-Edema"
Description: "อาการบวมของแม่"
* ^url = $SD_Observation_PregEdema
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#45700-2 (exactly)
* value[x] only string
