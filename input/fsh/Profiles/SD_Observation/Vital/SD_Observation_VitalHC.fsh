Profile: Moph43pObservationVitalHC
Parent: $SD_Observation_VitalBase
Id: moph43p-observation-vital-head-circumference
Title: "MoPH43p Observation: Vital-HC"
Description: "เส้นรอบศีรษะ (Head circumference)"
* ^url = $SD_Observation_VitalHC
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $LNC#9843-4 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #cm (exactly)