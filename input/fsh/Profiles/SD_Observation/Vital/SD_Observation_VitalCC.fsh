Profile: Moph43pObservationVitalCC
Parent: $SD_Observation_VitalBase
Id: moph43p-observation-vital-chest-circumference
Title: "MoPH43p Observation: Vital-CC"
Description: "เส้นรอบอก (Chest circumference)"
* ^url = $SD_Observation_VitalCC
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #8279-2 (exactly)
* value[x] only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #cm (exactly)