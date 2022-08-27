Profile: Moph43pObservationVitalHt
Parent: $SD_Observation_Vital
Id: moph43p-observation-vital-bodyheight
Title: "MoPH43p Observation: Vital-Ht"
Description: "ส่วนสูง (Body height)"
* ^url = $SD_Observation_VitalHt
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #8302-2 (exactly)
* code.coding[snomed] ^sliceName = "snomed"
* code.coding[snomed].code = #1153637007 (exactly)
* value[x] 1..
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #cm (exactly)