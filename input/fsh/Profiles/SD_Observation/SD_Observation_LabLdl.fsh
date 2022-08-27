Profile: Moph43pObservationLDL
Parent: $SD_Observation_Lab
Id: moph43p-observation-lab-ldl
Title: "Observation - Lab LDL (MoPH43p)"
Description: "ผลการตรวจ LDL"
* ^url = $SD_Observation_LabLdl
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #13457-7 (exactly)
* code.coding[tmlt] ^sliceName = "tmlt"
* code.coding[tmlt].code = #320293 (exactly)
* code.coding[2digit] ^sliceName = "2digit"
* code.coding[2digit].code = #09 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #mg/dL (exactly)
* referenceRange.high.system 1..
* referenceRange.high.system = "http://unitsofmeasure.org" (exactly)
* referenceRange.high.code 1..
* referenceRange.high.code = #mg/dL (exactly)