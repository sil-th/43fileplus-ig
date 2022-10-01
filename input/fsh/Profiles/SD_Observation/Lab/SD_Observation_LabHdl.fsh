Profile: MophPcObservationLabHDL
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-hdl
Title: "MoPH-PC Observation: Lab-HDL"
Description: "ผลการตรวจ HDL"
* ^url = $SD_Observation_LabHdl
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#2085-9
* code.coding[tmlt] = $CS_TMLT#320071
* code.coding[2digit] = $CS_THCC_2DigitLab#08
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #mg/dL (exactly)