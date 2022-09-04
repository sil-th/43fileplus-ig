Profile: Moph43pObservationPregParity
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-parity
Title: "MoPH43p Observation: Pregnancy-Parity"
Description: "จำนวนบุตรทั้งหมดที่เคยมี"
* ^url = $SD_Observation_PregParity
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#11977-6 (exactly)
* value[x] only integer