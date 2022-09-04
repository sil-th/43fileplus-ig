Profile: Moph43pObservationLabLDL
Parent: $SD_Observation_LabBase
Id: moph43p-observation-lab-ldl
Title: "MoPH43p Observation: Lab-LDL"
Description: "ผลการตรวจ LDL"
* ^url = $SD_Observation_LabLdl
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#13457-7 (exactly)
* code.coding[tmlt] = $CS_TMLT#320293 (exactly)
* code.coding[2digit] = $CS_THCC_2DigitLab#09 (exactly)
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #mg/dL (exactly)