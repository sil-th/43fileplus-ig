Profile: Moph43pObservationHematocritProfile
Parent: $SD_Observation_Lab
Id: moph43p-observation-lab-hct
Title: "Observation - Hct (MoPH43p)"
Description: "ผลการตรวจ Hematocrit"
* ^url = $SD_Observation_LabHct
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #20570-8 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..