Profile: MophPcObservationPregBirthLiving
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-birth-living
Title: "MoPH-PC Observation: Pregnancy-Birth Living"
Description: "จำนวนบุตรที่มีชีวิต"
* ^url = $SD_Observation_PregBirthLiving
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #11638-4 (exactly)
* value[x] only integer
