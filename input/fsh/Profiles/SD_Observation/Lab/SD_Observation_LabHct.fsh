Profile: Moph43pObservationLabHct
Parent: $SD_Observation_LabBase
Id: moph43p-observation-lab-hct
Title: "MoPH43p Observation: Lab-Hct"
Description: "ผลการตรวจ Hematocrit"
* ^url = $SD_Observation_LabHct
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#20570-8 (exactly)
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #% (exactly)