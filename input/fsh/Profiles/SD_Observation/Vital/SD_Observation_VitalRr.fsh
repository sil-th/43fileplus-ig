Profile: Moph43pObservationVitalRR
Parent: $SD_Observation_VitalBase
Id: moph43p-observation-vital-resprate
Title: "MoPH43p Observation: Vital-RR"
Description: "อัตราการหายใจ (Respiratory rate)"
* ^url = $SD_Observation_VitalRr
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus] = $LNC#9279-1 (exactly)
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #/min (exactly)