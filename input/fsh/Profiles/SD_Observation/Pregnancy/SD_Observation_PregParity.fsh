Profile: MophPcObservationPregParity
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-parity
Title: "MoPH-PC Observation: Pregnancy-Parity"
Description: "จำนวนบุตรทั้งหมดที่เคยมี"
* ^url = $SD_Observation_PregParity
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #11977-6 (exactly)
* value[x] only integer