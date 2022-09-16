Profile: Moph43pObservationNeonateGeneral
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-general
Title: "MoPH43p Observation: Neonate General"
Description: "สุขภาพเด็กโดยรวม"
* ^url = $SD_Observation_NeonateGeneral
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #76447-2 (exactly)
* value[x] only string