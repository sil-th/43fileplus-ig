Profile: MophPcObservationLabTsh
Parent: $SD_Observation_LabBase
Id: mophpc-observation-lab-tsh
Title: "MoPH-PC Observation: Lab-TSH"
Description: "ผลการตรวจ TSH"
* ^url = $SD_Observation_LabTsh
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] = $LNC#29575-8
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #m[IU]/L (exactly)


