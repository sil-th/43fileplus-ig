// Alias: $EX_TH_AccidentCoverage = https://fhir-ig.sil-th.org/43filesplus/Extension/ex-account-accident-coverage
// * extension[0]
//   * url = $CS_THCC_AccidentCoverage
//   * valueCodeableConcept = $CS_THCC_AccidentCoverage#V "ใช้ พรบ. ผู้ประสบภัยจากรถ"
Extension: EX_TH_AccidentCoverage
Id: ex-account-accident-coverage
Title: "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
Description: "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* ^url = $EX_TH_AccidentCoverage
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Account"
* . 0..*
* . ^short = "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* . ^definition = "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AccidentCoverage (extensible)
