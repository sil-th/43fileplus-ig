Profile: MophPcObservationPregFetalHeartRate
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-fetal-heart-rate
Title: "MoPH-PC Observation: Pregnancy-Fetal Heart Rate"
Description: "จำนวนครั้งการเต้นของหัวใจเด็ก"
* ^url = $SD_Observation_PregFetalHeartRate
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #55283-6 (exactly)
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.unit 0..
* valueQuantity.system 0..
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 0..
* valueQuantity.code = #/min (exactly)

