Profile: Moph43pObservationPregPregTest
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-preg-test
Title: "MoPH43p Observation: Pregnancy-Pregancy Test"
Description: "ผลการทดสอบการตั้งครรภ์"
* ^url = $SD_Observation_PregPregTest
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#laboratory
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #2106-3 (exactly)
* device MS
  * extension contains
    $EX_TH_ObservationDeviceAmount named deviceAmount 0..*
  * identifier MS
  * identifier ^short = "รหัสเวชภัณฑ์ที่ใช้ทดสอบ"
    * type = $CS_TH_IdentifierType#localDevice
    * system MS
    * value 1.. MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)
