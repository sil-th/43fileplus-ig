Profile: Moph43pObservationPregFetalPresentation
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-fetal-presentation
Title: "MoPH43p Observation: Pregnancy-Fetal Presentation"
Description: "ส่วนนำของเด็ก"
* ^url = $SD_Observation_PregFetalPresentation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#11876-0 (exactly)
* value[x] only string