// Alias: $EX_TH_MedicationDispenseDeliveryMode = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-med-delivery
// * extension[0]
//   * url = $EX_TH_MedicationDispenseDeliveryMode
//   * valueCodeableConcept = $CS_43Plus_MedDelivery#1 "รับที่ counter ยา"
Extension: EX_TH_MedicationDispenseDeliveryMode
Id: ex-medicationdispense-med-delivery-mode
Title: "Ext MedicationDispense: Delivery Mode"
Description: "การส่งมอบยา (กรณีจ่ายไปใช้ที่บ้าน)"
* ^url = $EX_TH_MedicationDispenseDeliveryMode
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
* value[x] from $VS_43Plus_MedDelivery (extensible)