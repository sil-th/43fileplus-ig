Profile: MophPcObservationLabChol
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-chol
Title: "MoPH43p Observation: Lab-Chol"
Description: "ผลการตรวจ Total Cholesterol"
* ^url = $SD_Observation_LabChol
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#2093-3
* code.coding[tmlt] = $CS_TMLT#320070
* code.coding[2digit] = $CS_THCC_2DigitLab#07
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #mg/dL (exactly)