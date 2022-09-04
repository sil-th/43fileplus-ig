Profile: Moph43pObservationPregPregTest
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-preg-test
Title: "MoPH43p Observation: Pregnancy-Pregancy Test"
Description: "ผลการทดสอบการตั้งครรภ์"
* ^url = $SD_Observation_PregPregTest
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#laboratory (exactly)
* code.coding[code43Plus] = $LNC#2106-3 (exactly)
* device MS
  * extension contains
    $EX_TH_ObservationDeviceAmount named deviceAmount 0..*
  * identifier MS
  * identifier ^short = "รหัสเวชภัณฑ์ที่ใช้ทดสอบ"
    * system MS
    * value 1.. MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_ObsInterpret (exactly)
