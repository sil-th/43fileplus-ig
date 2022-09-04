Profile: Moph43pObservationVitalHiC
Parent: $SD_Observation_VitalBase
Id: moph43p-observation-vital-hip-circumference
Title: "MoPH43p Observation: Vital-HiC"
Description: "รอบสะโพก (Hip circumference)"
* ^url = $SD_Observation_VitalHiC
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $LNC#62409-8 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #cm (exactly)