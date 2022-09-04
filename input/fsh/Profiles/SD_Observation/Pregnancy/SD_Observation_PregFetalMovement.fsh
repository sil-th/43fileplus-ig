Profile: Moph43pObservationPregFetalMovement
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-fetal-movement
Title: "MoPH43p Observation: Pregnancy-Fetal Movement"
Description: "เด็กดิ้นหรือไม่"
* ^url = $SD_Observation_PregFetalMovement
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#56834-5 (exactly)
* value[x] only string
