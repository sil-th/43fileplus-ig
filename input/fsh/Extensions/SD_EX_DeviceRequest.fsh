// Alias: $EX_TH_DeviceRequestUseLocation = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-product-use-location
// * extension
//   * url = $EX_TH_DeviceRequestUseLocation
//   * valueCodeableConcept = $CS_eClaim_MedicationCategory#2 "ใช้ที่บ้าน"
Extension: EX_TH_DeviceRequestUseLocation
Id: ex-devicerequest-use-location
Title: "DeviceRequest: Product Use Location"
Description: "รหัสหมวดสถานที่ใช้ยา/เวชภัณฑ์"
* ^url = $EX_TH_DeviceRequestUseLocation
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "DeviceRequest"
* . 0..*
* . ^short = "รหัสหมวดสถานที่ใช้ยา/เวชภัณฑ์"
* . ^definition = "รหัสหมวดสถานที่ใช้ยา/เวชภัณฑ์"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_MedicationCategory (extensible)
