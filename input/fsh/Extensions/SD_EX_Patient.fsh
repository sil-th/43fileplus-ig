// * extension[+]
//   * url = $EX_TH_PatientRace
//   * valueCodeableConcept
//     * coding[0] = $ISO3166#THA
//     * coding[+] = $CS_THCC_Nationality#099
//     * text = "ไทย"

Extension: EX_TH_PatientRace
Id: ex-patient-race
Title: "Ext Patient: Race"
Description: "เชื้อชาติของบุคคล"
* ^url = $EX_TH_PatientRace
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "เชื้อชาติของบุคคล"
* . ^definition = "เชื้อชาติของบุคคล"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_Nationality (extensible)


// Alias: $EX_TH_PatientEducationLevel = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-education-level
// * extension[+]
//   * url = $EX_TH_PatientEducationLevel
//   * valueCodeableConcept
//     * coding[0] = $CS_TH_ISCED1997#61 "ปริญญาตรี"
//     * coding[+] = $CS_THCC_EducationLevel#05 "ปริญญาตรี"
//     * text = "ปริญญาตรี"
Extension: EX_TH_PatientEducationLevel
Id: ex-patient-education-level
Title: "Ext Patient: Education Level"
Description: "ระดับการศึกษา"
* ^url = $EX_TH_PatientEducationLevel
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "ระดับการศึกษา"
* . ^definition = "ระดับการศึกษา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_EducationLevel (extensible)



// Alias: $EX_TH_PatientPersonStatus = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-person-status
  // * url = $EX_TH_PatientPersonStatus
  // * valueCodeableConcept
  //   * coding[0] = $CS_THCC_PersonStatus#1 "มีชื่ออยู่ตามทะเบียนบ้านในเขตรับผิดชอบและอยู่จริง"
  //   * text = "มีชื่ออยู่ตามทะเบียนบ้านในเขตรับผิดชอบและอยู่จริง"
Extension: EX_TH_PatientPersonStatus
Id: ex-patient-person-status
Title: "Ext Patient: Person Status"
Description: "สถานะบุคคล"
* ^url = $EX_TH_PatientPersonStatus
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "สถานะบุคคล"
* . ^definition = "สถานะบุคคล"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_PersonStatus (extensible)


// * extension[+]
//   * url = $EX_TH_PatientForeignerType
//   * valueCodeableConcept
//     * coding[+] = $CS_THCC_ForeignerType#30 "ประชากรต่างด้าวที่เป็นนักท่องเที่ยวเข้าเมืองโดยถูกต้องตามกฎหมาย"
//     * text = "ประชากรต่างด้าวที่เป็นนักท่องเที่ยวเข้าเมืองโดยถูกต้องตามกฎหมาย"
Extension: EX_TH_PatientForeignerType
Id: ex-patient-foreigner-type
Title: "Ext Patient: Foreigner Type"
Description: "รหัสความเป็นคนต่างด้าว"
* ^url = $EX_TH_PatientForeignerType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "รหัสความเป็นคนต่างด้าว"
* . ^definition = "รหัสความเป็นคนต่างด้าว"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ForeignerType (extensible)




// * extension[+]
//   * url = $EX_TH_PatientPidRemoveReason
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_PidRemoveReason#1 "ตาย"
//     * text = "ตาย"
Extension: EX_TH_PatientPidRemoveReason
Id: ex-patient-pid-remove-reason
Title: "Ext Patient: PID Remove Reason"
Description: "สถานะ/สาเหตุการจำหน่าย"
* ^url = $EX_TH_PatientPidRemoveReason
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "สถานะ/สาเหตุการจำหน่าย"
* . ^definition = "สถานะ/สาเหตุการจำหน่าย"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_PidRemoveReason (extensible)


