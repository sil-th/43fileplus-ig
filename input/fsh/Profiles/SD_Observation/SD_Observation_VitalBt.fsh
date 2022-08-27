Profile: Moph43pObservationBodyTemp
Parent: $SD_Observation_Vital
Id: moph43p-observation-vital-bodytemp
Title: "Observation - Vital-BT (MoPH43p)"
Description: "อุณหภูมิร่างกาย (Body temperature)"
* ^url = $SD_Observation_VitalBt
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #8310-5 (exactly)
* code.coding[snomed] ^sliceName = "snomed"
* code.coding[snomed].code = #386725007 (exactly)
* value[x] 1..
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #Cel (exactly)