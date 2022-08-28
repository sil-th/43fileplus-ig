// Alias: $EX_TH_MedicationRequestSource = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-medication-source
// * extension[0]
//   * url = $EX_TH_MedicationRequestSource
//   * valueCodeableConcept = $CS_THCC_MedicationSource#1 "ยาที่ให้จาก รพ.ต้นทาง"
Extension: EX_TH_MedicationRequestSource
Id: ex-medicationrequest-medication-source
Title: "Ext MedicationRequest: Medication Source"
Description: "รหัสประเภทยาที่ใช้ปัจจุบัน"
* ^url = $EX_TH_MedicationRequestSource
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context[0].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* . 0..*
* . ^short = "รหัสประเภทยาที่ใช้ปัจจุบัน"
* . ^definition = "รหัสประเภทยาที่ใช้ปัจจุบัน"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_MedicationSource (extensible)



// Alias: $EX_TH_MedicationRequestOutNLEM = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-med-out-nlem
// * extension[+]
//   * url = $EX_TH_MedicationRequestOutNLEM
//   * valueCodeableConcept = $CS_THCC_MedOutNLEM#EA "เกิดอาการไม่พึงประสงค์จากยาหรือแพ้ยาที่สามารถใช้ได้ในบัญชียาหลักแห่งชาติ"
Extension: EX_TH_MedicationRequestOutNLEM
Id: ex-medicationrequest-out-nlem
Title: "Ext MedicationRequest: Out of NLEM Reason"
Description: "เหตุผลการใช้ยานอกบัญชียาหลัก"
* ^url = $EX_TH_MedicationRequestOutNLEM
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "MedicationRequest"
* . 0..*
* . ^short = "เหตุผลการใช้ยานอกบัญชียาหลัก"
* . ^definition = "เหตุผลการใช้ยานอกบัญชียาหลัก"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_MedOutNLEM (extensible)





// Alias: $EX_TH_MedicationRequestApprovedNo = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-med-approved-no
// * extension[+]
//   * url = $EX_TH_MedicationRequestApprovedNo
//   * valueString = "ApprovedNumber"
Extension: EX_TH_MedicationRequestApprovedNo
Id: ex-medicationrequest-med-approved-no
Title: "Ext MedicationRequest: Med Approve Number"
Description: "เลขที่ได้รับการอนุมัติ จากระบบขออนุมัติใช้ยาควบคุมเฉพาะ"
* ^url = $EX_TH_MedicationRequestApprovedNo
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "MedicationRequest"
* . 0..*
* . ^short = "เลขที่ได้รับการอนุมัติ จากระบบขออนุมัติใช้ยาควบคุมเฉพาะ"
* . ^definition = "เลขที่ได้รับการอนุมัติ จากระบบขออนุมัติใช้ยาควบคุมเฉพาะ"
* value[x] 1..
* value[x] only string


