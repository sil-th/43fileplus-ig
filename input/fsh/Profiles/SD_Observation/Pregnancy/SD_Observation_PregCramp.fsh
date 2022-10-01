Profile: MophPcObservationPregCramp
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-cramp
Title: "MoPH-PC Observation: Pregnancy-Cramp"
Description: "อาการตะคริวของแม่"
* ^url = $SD_Observation_PregCramp
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #449918009 (exactly)
* value[x] only string


