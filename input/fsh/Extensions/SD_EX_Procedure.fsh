// Alias: $EX_TH_LaborLocation = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-labor-location
// * location
//   * extension[0]
//     * url = $EX_TH_LaborLocation
//     * valueCodeableConcept = $CS_THCC_LaborLocation#1 "โรงพยาบาล"
//   * display = "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
Extension: EX_TH_LaborLocation
Id: ex-procedure-labor-location
Title: "รหัสสถานที่คลอด"
Description: "รหัสสถานที่คลอด"
* ^url = $EX_TH_LaborLocation
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Procedure.location"
* . 0..*
* . ^short = "รหัสสถานที่คลอด"
* . ^definition = "รหัสสถานที่คลอด"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_LaborLocation (extensible)






// Alias: $EX_TH_ProcedureType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-procedure-type
// * extension[0]
//   * url = $EX_TH_ProcedureType
//   * valueCodeableConcept = $CS_THCC_ProcedureType#1 "Principal procedure"
Extension: EX_TH_ProcedureType
Id: ex-procedure-procedure-type
Title: "รหัสชนิดของหัตถการ"
Description: "รหัสชนิดของหัตถการ"
* ^url = $EX_TH_ProcedureType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Procedure"
* . 0..*
* . ^short = "รหัสชนิดของหัตถการ"
* . ^definition = "รหัสชนิดของหัตถการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ProcedureType (extensible)


