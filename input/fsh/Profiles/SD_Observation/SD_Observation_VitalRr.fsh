Profile: Moph43pObservationVitalRespRate
Parent: $SD_Observation_Vital
Id: moph43p-observation-vital-resprate
Title: "Observation - Vital-RR (MoPH43p)"
Description: "อัตราการหายใจ (Respiratory rate)"
* ^url = $SD_Observation_VitalRr
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #9279-1 (exactly)
* code.coding[snomed] ^sliceName = "snomed"
* code.coding[snomed].code = #86290005 (exactly)
* value[x] 1..
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #/min (exactly)