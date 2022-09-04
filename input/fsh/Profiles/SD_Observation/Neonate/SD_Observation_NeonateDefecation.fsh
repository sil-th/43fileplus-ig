Profile: Moph43pObservationNeonateDefecation
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-defecation
Title: "MoPH43p Observation: Neonate Defecation"
Description: "ระบบขับถ่ายอุจจาระ"
* ^url = $SD_Observation_NeonateDefecation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#364171004 (exactly)
* value[x] only string