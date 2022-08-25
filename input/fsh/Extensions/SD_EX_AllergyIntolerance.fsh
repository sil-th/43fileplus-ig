// Alias: $EX_TH_AllergyCertainy = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-allergy-certainy
// * extension[0]
//   * url = $EX_TH_AllergyCertainy
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_AllergyCertainy#1 "certain"
Extension: EX_TH_AllergyCertainy
Id: ex-allergyintolerance-allergy-certainy
Title: "รหัสประเภทการวินิจฉัยการแพ้ยา"
Description: "รหัสประเภทการวินิจฉัยการแพ้ยา"
* ^url = $EX_TH_AllergyCertainy
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสประเภทการวินิจฉัยการแพ้ยา"
* . ^definition = "รหัสประเภทการวินิจฉัยการแพ้ยา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergyCertainy (extensible)






// Alias: $EX_TH_AllergySeverity = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-allergy-severity
// * extension[+]
//   * url = $EX_TH_AllergySeverity
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_AllergySeverity#1 "ไม่ร้ายแรง (Non-serious)"
Extension: EX_TH_AllergySeverity
Id: ex-allergyintolerance-allergy-severity
Title: "รหัสระดับความรุนแรงของการแพ้ยา"
Description: "รหัสระดับความรุนแรงของการแพ้ยา"
* ^url = $EX_TH_AllergySeverity
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสระดับความรุนแรงของการแพ้ยา"
* . ^definition = "รหัสระดับความรุนแรงของการแพ้ยา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergySeverity (extensible)






// Alias: $EX_TH_AllergyAssertType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-allergy-assert-type
// * extension[+]
//   * url = $EX_TH_AllergyAssertType
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_AllergyAssertType#3 "สถานพยาบาลอื่นเป็นผู้ให้ข้อมูล"
Extension: EX_TH_AllergyAssertType
Id: ex-allergyintolerance-allergy-assert-type
Title: "รหัสผู้ให้ประวัติการแพ้ยา"
Description: "รหัสผู้ให้ประวัติการแพ้ยา"
* ^url = $EX_TH_AllergyAssertType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสผู้ให้ประวัติการแพ้ยา"
* . ^definition = "รหัสผู้ให้ประวัติการแพ้ยา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_AllergyAssertType (extensible)






// Alias: $EX_TH_AllergyAssertOrg = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-allergy-assert-org
// * extension[+]
//   * url = $EX_TH_AllergyAssertOrg
//   * valueReference = Reference(Organization/organization-main)
Extension: EX_TH_AllergyAssertOrg
Id: ex-allergyintolerance-allergy-assert-org
Title: "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
Description: "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* ^url = $EX_TH_AllergyAssertOrg
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . 0..*
* . ^short = "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* . ^definition = "รหัสสถานพยาบาลผู้ให้ประวัติการแพ้ยา"
* value[x] 1..
* value[x] only Reference(Organization)