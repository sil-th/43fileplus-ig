Profile: Moph43pObservationVitalBW
Parent: $SD_Observation_Vital
Id: moph43p-observation-vital-bodyweight
Title: "MoPH43p Observation: Vital-BW"
Description: "น้ำหนัก (Body weight)"
* ^url = $SD_Observation_VitalBw
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #29463-7 (exactly)
* code.coding[snomed] ^sliceName = "snomed"
* code.coding[snomed].code = #27113001 (exactly)
* value[x] 1..
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #kg (exactly)