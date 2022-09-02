// Alias: $EX_TH_ConditionChronicDischargeReason = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-chronic-discharge-reason
// Condition
// * extension[0]
//   * url = $EX_TH_ConditionChronicDischargeReason
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_ChronicDischargeReason#08 "โรคอยู่ในภาวะสงบ(inactive)ไม่มีความจำเป็นต้องรักษา"
//     * text = "โรคอยู่ในภาวะสงบ(inactive)ไม่มีความจำเป็นต้องรักษา"
// EpisodeOfCare
// * extension[0]
//   * url = $EX_TH_ConditionChronicDischargeReason
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_ChronicDischargeReason#08 "โรคอยู่ในภาวะสงบ(inactive)ไม่มีความจำเป็นต้องรักษา"
//     * text = "โรคอยู่ในภาวะสงบ(inactive)ไม่มีความจำเป็นต้องรักษา"
Extension: EX_TH_ConditionChronicDischargeReason
Id: ex-condition-chronic-discharge-reason
Title: "Condition: Chronic Case Discharge Reason"
Description: "ประเภทการจำหน่าย chronic case"
* ^url = $EX_TH_ConditionChronicDischargeReason
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "Condition"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* . 0..*
* . ^short = "ประเภทการจำหน่าย chronic case"
* . ^definition = "ประเภทการจำหน่าย chronic case"
* url = $EX_TH_ConditionChronicDischargeReason (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ChronicDischargeReason (extensible)







