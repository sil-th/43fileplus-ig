// Alias: $EX_TH_MedDelivery = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-med-delivery
// * extension[0]
//   * url = $EX_TH_MedDelivery
//   * valueCodeableConcept = $CS_THCC_MedDelivery#1 "รับที่ counter ยา"
Extension: EX_TH_MedDelivery
Id: ex-medicationdispense-med-delivery
Title: "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
Description: "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
* ^url = $EX_TH_MedDelivery
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "MedicationDispense"
* . 0..*
* . ^short = "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
* . ^definition = "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_MedDelivery (extensible)