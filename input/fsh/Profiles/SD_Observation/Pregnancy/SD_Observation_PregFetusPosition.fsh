Profile: MophPcObservationPregFetusPosition
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-fetus-position
Title: "MoPH-PC Observation: Pregnancy-Fetus Position"
Description: "ท่าเด็ก"
* ^url = $SD_Observation_PregFetusPosition
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #72155-5 (exactly)
* value[x] only string


