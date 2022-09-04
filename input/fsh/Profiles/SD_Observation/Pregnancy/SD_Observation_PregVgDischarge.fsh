Profile: Moph43pObservationPregVgDischarge
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-vg-discharge
Title: "MoPH43p Observation: Pregnancy-Vaginal Discharge"
Description: "พบตกขาวหรือไม่"
* ^url = $SD_Observation_PregVgDischarge
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#271939006 (exactly)
* value[x] only string