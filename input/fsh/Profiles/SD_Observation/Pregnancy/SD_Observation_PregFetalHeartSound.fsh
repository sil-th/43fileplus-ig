Profile: Moph43pObservationPregFetalHeartSound
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-fetal-heart-sound
Title: "MoPH43p Observation: Pregnancy-Fetal Heart Sound"
Description: "เสียงหัวใจเด็ก"
* ^url = $SD_Observation_PregFetalHeartSound
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#364623000 (exactly)
* value[x] only string

