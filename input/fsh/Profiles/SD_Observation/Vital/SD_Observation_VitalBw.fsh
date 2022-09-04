Profile: Moph43pObservationVitalBW
Parent: $SD_Observation_VitalBase
Id: moph43p-observation-vital-bodyweight
Title: "MoPH43p Observation: Vital-BW"
Description: "น้ำหนัก (Body weight)"
* ^url = $SD_Observation_VitalBw
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $LNC#29463-7 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #kg (exactly)