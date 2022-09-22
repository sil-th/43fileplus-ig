Profile: MophPcObservationPregEdema
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-edema
Title: "MoPH43p Observation: Pregnancy-Edema"
Description: "อาการบวมของแม่"
* ^url = $SD_Observation_PregEdema
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #45700-2 (exactly)
* value[x] only string
