// Alias: $EX_TH_ProcedureLaborLocation = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-labor-location
// * location
//   * extension[0]
//     * url = $EX_TH_ProcedureLaborLocation
//     * valueCodeableConcept = $CS_THCC_LaborLocation#1 "โรงพยาบาล"
//   * display = "OPD GP Clinic 1 โรงพยาบาลตัวอย่าง"
Extension: EX_TH_ProcedureLaborLocation
Id: ex-procedure-labor-location
Title: "Ext Procedure: Labor Location"
Description: "รหัสสถานที่คลอด"
* ^url = $EX_TH_ProcedureLaborLocation
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






// Alias: $EX_TH_ProcedureProcedureType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-procedure-type
// * extension[0]
//   * url = $EX_TH_ProcedureProcedureType
//   * valueCodeableConcept = $CS_eClaim_ProcedureType#1 "Principal procedure"
Extension: EX_TH_ProcedureProcedureType
Id: ex-procedure-procedure-type
Title: "Ext Procedure: Procedure Type"
Description: "รหัสชนิดของหัตถการ"
* ^url = $EX_TH_ProcedureProcedureType
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
* value[x] from $VS_eClaim_ProcedureType (extensible)


