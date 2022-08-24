// * extension[+]
//   * url = $EX_TH_Race
//   * valueCodeableConcept
//     * coding[0] = $ISO3166#THA
//     * coding[+] = $CS_THCC_Nationality#099
//     * text = "ไทย"

Extension: EX_TH_Race
Id: extension-patient-race
Title: "เชื้อชาติของบุคคล"
Description: "เชื้อชาติของบุคคล"
* ^url = $EX_TH_Race
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


// Alias: $EX_TH_EducationLevel = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-education-level
// * extension[+]
//   * url = $EX_TH_EducationLevel
//   * valueCodeableConcept
//     * coding[0] = $CS_TH_ISCED1997#61 "ปริญญาตรี"
//     * coding[+] = $CS_THCC_EducationLevel#05 "ปริญญาตรี"
//     * text = "ปริญญาตรี"
Extension: EX_TH_EducationLevel
Id: extension-patient-education-level
Title: "ระดับการศึกษา"
Description: "ระดับการศึกษา"
* ^url = $EX_TH_EducationLevel
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



// Alias: $EX_TH_PersonStatus = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-person-status
  // * url = $EX_TH_PersonStatus
  // * valueCodeableConcept
  //   * coding[0] = $CS_THCC_PersonStatus#1 "มีชื่ออยู่ตามทะเบียนบ้านในเขตรับผิดชอบและอยู่จริง"
  //   * text = "มีชื่ออยู่ตามทะเบียนบ้านในเขตรับผิดชอบและอยู่จริง"
Extension: EX_TH_PersonStatus
Id: extension-patient-person-status
Title: "สถานะบุคคล"
Description: "สถานะบุคคล"
* ^url = $EX_TH_PersonStatus
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
//   * url = $EX_TH_ForeignerType
//   * valueCodeableConcept
//     * coding[+] = $CS_THCC_ForeignerType#30 "ประชากรต่างด้าวที่เป็นนักท่องเที่ยวเข้าเมืองโดยถูกต้องตามกฎหมาย"
//     * text = "ประชากรต่างด้าวที่เป็นนักท่องเที่ยวเข้าเมืองโดยถูกต้องตามกฎหมาย"
Extension: EX_TH_ForeignerType
Id: extension-patient-foreigner-type
Title: "รหัสความเป็นคนต่างด้าว"
Description: "รหัสความเป็นคนต่างด้าว"
* ^url = $EX_TH_ForeignerType
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
//   * url = $EX_TH_PidRemoveReason
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_PidRemoveReason#1 "ตาย"
//     * text = "ตาย"
Extension: EX_TH_PidRemoveReason
Id: extension-patient-pid-remove-reason
Title: "สถานะ/สาเหตุการจำหน่าย"
Description: "สถานะ/สาเหตุการจำหน่าย"
* ^url = $EX_TH_PidRemoveReason
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


