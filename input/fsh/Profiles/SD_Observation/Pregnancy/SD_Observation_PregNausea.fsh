Profile: MophPcObservationPregNausea
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-nausea
Title: "MoPH-PC Observation: Pregnancy-Nausea"
Description: "อาการคลื่นใส้"
* ^url = $SD_Observation_PregNausea
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #81660-3 (exactly)
* value[x] only string

