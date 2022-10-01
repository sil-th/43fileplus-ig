Profile: MophPcObservationLabTG
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-triglyceride
Title: "MoPH-PC Observation: Lab-TG"
Description: "ผลการตรวจ Triglyceride"
* ^url = $SD_Observation_LabTg
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#2571-8
* code.coding[tmlt] = $CS_TMLT#320072
* code.coding[2digit] = $CS_THCC_2DigitLab#06
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #mg/dL (exactly)