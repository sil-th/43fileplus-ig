Profile: Moph43pObservationHeartRate
Parent: $SD_Observation_Vital
Id: moph43p-observation-vital-heartrate
Title: "Observation - Vital-HR (MoPH43p)"
Description: "อัตราการเต้นของชีพจร (Heart rate)"
* ^url = $SD_Observation_VitalHr
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #8867-4 (exactly)
* code.coding[snomed] ^sliceName = "snomed"
* code.coding[snomed].code = #364075005 (exactly)
* value[x] 1..
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #/min (exactly)