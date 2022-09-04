Profile: Moph43pObservationLabTG
Parent: $SD_Observation_LabBase
Id: moph43p-observation-lab-triglyceride
Title: "MoPH43p Observation: Lab-TG"
Description: "ผลการตรวจ Triglyceride"
* ^url = $SD_Observation_LabTg
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#2571-8 (exactly)
* code.coding[tmlt] = $CS_TMLT#320072 (exactly)
* code.coding[2digit] = $CS_THCC_2DigitLab#06 (exactly)
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #mg/dL (exactly)