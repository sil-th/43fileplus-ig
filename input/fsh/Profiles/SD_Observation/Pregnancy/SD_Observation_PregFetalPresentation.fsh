Profile: MophPcObservationPregFetalPresentation
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-fetal-presentation
Title: "MoPH43p Observation: Pregnancy-Fetal Presentation"
Description: "ส่วนนำของเด็ก"
* ^url = $SD_Observation_PregFetalPresentation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #11876-0 (exactly)
* value[x] only string