Profile: Moph43pObservationNeonateGeneral
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-general
Title: "MoPH43p Observation: Neonate General"
Description: "ผลการตรวจทารกหลังคลอด"
* ^url = $SD_Observation_NeonateGeneral
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#76447-2 (exactly)
* value[x] only string