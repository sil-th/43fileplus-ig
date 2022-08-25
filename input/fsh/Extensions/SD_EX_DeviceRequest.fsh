// Alias: $EX_TH_ProductUseLocation = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-product-use-location
// * extension
//   * url = $EX_TH_ProductUseLocation
//   * valueCodeableConcept = $CS_THCC_MedicationCategory#2 "ใช้ที่บ้าน"
Extension: EX_TH_ProductUseLocation
Id: ex-devicerequest-product-use-location
Title: "รหัสหมวดรายการยา"
Description: "รหัสหมวดรายการยา"
* ^url = $EX_TH_ProductUseLocation
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "DeviceRequest"
* . 0..*
* . ^short = "รหัสหมวดรายการยา"
* . ^definition = "รหัสหมวดรายการยา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_MedicationCategory (extensible)
