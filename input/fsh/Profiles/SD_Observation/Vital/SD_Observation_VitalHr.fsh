Profile: Moph43pObservationVitalHr
Parent: $SD_Observation_VitalBase
Id: moph43p-observation-vital-heartrate
Title: "MoPH43p Observation: Vital-HR"
Description: "อัตราการเต้นของชีพจร (Heart rate)"
* ^url = $SD_Observation_VitalHr
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $LNC#8867-4 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #/min (exactly)