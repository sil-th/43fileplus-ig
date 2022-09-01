// Alias: $EX_TH_AccountAccidentCoverage = https://fhir-ig.sil-th.org/43filesplus/Extension/ex-account-accident-coverage
// * extension[0]
//   * url = $CS_eClaim_AccidentCoverage
//   * valueCodeableConcept = $CS_eClaim_AccidentCoverage#V "ใช้ พรบ. ผู้ประสบภัยจากรถ"
Extension: EX_TH_AccountAccidentCoverage
Id: ex-account-accident-coverage
Title: "Account: Accident Coverage"
Description: "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* ^url = $EX_TH_AccountAccidentCoverage
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
* value[x] from $VS_eClaim_AccidentCoverage (extensible)
