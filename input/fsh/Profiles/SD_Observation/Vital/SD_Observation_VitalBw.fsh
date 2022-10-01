Profile: MophPcObservationVitalBW
Parent: $SD_Observation_VitalBase
Id: mophpc-observation-vital-bodyweight
Title: "MoPH-PC Observation: Vital-BW"
Description: "น้ำหนัก (Body weight)"
* ^url = $SD_Observation_VitalBw
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #29463-7 (exactly)
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code from $VS_HL7_BwUnit