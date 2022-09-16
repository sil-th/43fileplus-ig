Profile: Moph43pObservationNeonateUmbilicalHygiene
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-umbilical-hygiene
Title: "MoPH43p Observation: Neonate Umbilical Hygiene"
Description: "ความสะอาดของสะดือ"
* ^url = $SD_Observation_NeonateUmbilicalHygiene
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #364594006 (exactly)
* value[x] only string