Profile: Moph43pObservationVitalBmi
Parent: $SD_Observation_VitalBase
Id: moph43p-observation-vital-Bmi
Title: "MoPH43p Observation: Vital-BMI"
Description: "ผล BMI"
* ^url = $SD_Observation_VitalBmi
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $LNC#39156-5 (exactly)
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #kg/m2 (exactly)


