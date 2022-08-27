Profile: Moph43pObservationVitalOcC
Parent: $SD_Observation_Vital
Id: moph43p-observation-vital-occipitofrontal-circumference
Title: "MoPH43p Observation: Vital-OcC"
Description: "เส้นรอบศีรษะจากหน้าผากเหนือคิ้วไปยังท้ายทอย (Occipito frontal head circumference)"
* ^url = $SD_Observation_VitalOcC
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[loinc] ^sliceName = "loinc"
* code.coding[loinc] ^mustSupport = true
* code.coding[loinc].code = #8290-9 (exactly)
* code.coding[snomed] ^sliceName = "snomed"
* code.coding[snomed].code = #363812007 (exactly)
* value[x] 1..
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #cm (exactly)