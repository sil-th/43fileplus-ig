Profile: Moph43pObservationLabHDL
Parent: $SD_Observation_Lab
Id: moph43p-observation-lab-hdl
Title: "MoPH43p Observation: Lab-HDL"
Description: "ผลการตรวจ HDL"
* ^url = $SD_Observation_LabHdl
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #2085-9 (exactly)
* code.coding[tmlt] ^sliceName = "tmlt"
* code.coding[tmlt].code = #320071 (exactly)
* code.coding[2digit] ^sliceName = "2digit"
* code.coding[2digit].code = #08 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #mg/dL (exactly)
* referenceRange.high.system 1..
* referenceRange.high.system = $UCUM (exactly)
* referenceRange.high.code 1..
* referenceRange.high.code = #mg/dL (exactly)