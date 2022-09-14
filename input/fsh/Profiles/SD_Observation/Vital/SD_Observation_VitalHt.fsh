Profile: Moph43pObservationVitalHt
Parent: $SD_Observation_VitalBase
Id: moph43p-observation-vital-bodyheight
Title: "MoPH43p Observation: Vital-Ht"
Description: "ส่วนสูง (Body height)"
* ^url = $SD_Observation_VitalHt
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #8302-2 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #cm (exactly)