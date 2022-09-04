Profile: Moph43pObservationPregBirthLiving
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-birth-living
Title: "MoPH43p Observation: Pregnancy-Birth Living"
Description: "จำนวนบุตรที่มีชีวิต"
* ^url = $SD_Observation_PregBirthLiving
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#11638-4 (exactly)
* value[x] only integer
