// * extension[0]
//   * url = $EX_TH_DeathLocType
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_DeathLocType#1 "ในสถานพยาบาล"
//     * text = "ในสถานพยาบาล"
// Alias: $EX_TH_DeathLocType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-death-location-type
Extension: EX_TH_DeathLocType
Id: ex-encounter-death-location-type
Title: "รหัสสถานที่ตาย"
Description: "รหัสสถานที่ตาย"
* ^url = $EX_TH_DeathLocType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter"
* . 0..*
* . ^short = "รหัสสถานที่ตาย"
* . ^definition = "รหัสสถานที่ตาย"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_DeathLocType (extensible)






// * extension[+]
//   * url = $EX_TH_DeathPregnancy
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_DeathPregnancy#3 "ไม่ตั้งครรภ์"
//     * text = "ไม่ตั้งครรภ์"
// Alias: $EX_TH_DeathPregnancy = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-death-pregnancy
Extension: EX_TH_DeathPregnancy
Id: ex-encounter-death-pregnancy
Title: "การเสียชีวิตที่เกี่ยวข้องกับตั้งครรภ์และการคลอด"
Description: "การเสียชีวิตที่เกี่ยวข้องกับตั้งครรภ์และการคลอด"
* ^url = $EX_TH_DeathPregnancy
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter"
* . 0..*
* . ^short = "การเสียชีวิตที่เกี่ยวข้องกับตั้งครรภ์และการคลอด"
* . ^definition = "การเสียชีวิตที่เกี่ยวข้องกับตั้งครรภ์และการคลอด"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_DeathPregnancy (extensible)





// * subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
//   * extension
//     * url = $EX_TH_PatientLocationType 
//     * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
// Alias: $EX_TH_PatientLocationType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-patient-location-type
Extension: EX_TH_PatientLocationType
Id: ex-encounter-patient-location-type
Title: "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
Description: "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* ^url = $EX_TH_PatientLocationType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.subject"
* . 0..*
* . ^short = "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* . ^definition = "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_PatientLocationType (extensible)






// * period
//   * extension
//     * url = $EX_TH_ServiceHour 
//     * valueCodeableConcept = $CS_THCC_ServiceHour#1 "ในเวลาราชการ"
// Alias: $EX_TH_ServiceHour = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-service-hour
Extension: EX_TH_ServiceHour
Id: ex-encounter-service-hour
Title: "รหัสเวลามารับบริการ"
Description: "รหัสเวลามารับบริการ"
* ^url = $EX_TH_ServiceHour
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.period"
* . 0..*
* . ^short = "รหัสเวลามารับบริการ"
* . ^definition = "รหัสเวลามารับบริการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ServiceHour (extensible)






// * location
//   * extension
//     * url = $EX_TH_ServiceLocationType 
//     * valueCodeableConcept = $CS_THCC_ServiceLocationType#1 "ในสถานบริการ"
// Alias: $EX_TH_ServiceLocationType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-service-location-type
Extension: EX_TH_ServiceLocationType
Id: ex-encounter-service-location-type
Title: "รหัสสถานที่ที่ให้บริการ"
Description: "รหัสสถานที่ที่ให้บริการ"
* ^url = $EX_TH_ServiceLocationType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.location"
* . 0..*
* . ^short = "รหัสสถานที่ที่ให้บริการ"
* . ^definition = "รหัสสถานที่ที่ให้บริการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ServiceLocationType (extensible)






// * extension[0]
//   * url = $EX_TH_ServiceTypeTH 
//   * valueCodeableConcept = $CS_THCC_ServiceTypeTH#0 "Refer ในบัญชีเครือข่ายเดียวกัน"
// Alias: $EX_TH_ServiceTypeTH = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-service-type-th
Extension: EX_TH_ServiceTypeTH
Id: ex-encounter-service-type-th
Title: "รหัสประเภทการให้บริการ"
Description: "รหัสประเภทการให้บริการ"
* ^url = $EX_TH_ServiceTypeTH
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter"
* . 0..*
* . ^short = "รหัสประเภทการให้บริการ"
* . ^definition = "รหัสประเภทการให้บริการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ServiceTypeTH (extensible)






// * hospitalization
//   * extension[0]
//     * url = $EX_TH_DischargeStatus 
//     * valueCodeableConcept = $CS_THCC_DischargeStatus#3 "ส่งต่อไปยังสถานพยาบาลอื่น"
// Alias: $EX_TH_DischargeStatus = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-discharge-status
Extension: EX_TH_DischargeStatus
Id: ex-encounter-discharge-status
Title: "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ OPD"
Description: "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ OPD"
* ^url = $EX_TH_DischargeStatus
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . 0..*
* . ^short = "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ OPD"
* . ^definition = "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ OPD"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_DischargeStatus (extensible)





// * hospitalization
//   * extension[+]
//     * url = $EX_TH_DischargeInstruction
//     * valueAnnotation
//       * text = "ใส่คำแนะนำหลังการเข้ารับบริการ"
// Alias: $EX_TH_DischargeInstruction = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-discharge-instruction
Extension: EX_TH_DischargeInstruction
Id: ex-encounter-discharge-instruction
Title: "คำแนะนำหลังการเข้ารับบริการ"
Description: "คำแนะนำหลังการเข้ารับบริการ"
* ^url = $EX_TH_DischargeInstruction
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . 0..*
* . ^short = "คำแนะนำหลังการเข้ารับบริการ"
* . ^definition = "คำแนะนำหลังการเข้ารับบริการ"
* value[x] 1..
* value[x] only Annotation






// * location[0]
//   * extension[0]
//     * url = $EX_TH_IpdJourney 
//     * valueCodeableConcept = $CS_THCC_IpdJourney#first "รหัสแผนกที่รับผู้ป่วย"
// Alias: $EX_TH_IpdJourney = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-ipd-journey
Extension: EX_TH_IpdJourney
Id: ex-encounter-ipd-journey
Title: "รหัสชนิดของแผนกที่ผู้ป่วยในรับบริการ"
Description: "รหัสชนิดของแผนกที่ผู้ป่วยในรับบริการ"
* ^url = $EX_TH_IpdJourney
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.location"
* . 0..*
* . ^short = "รหัสชนิดของแผนกที่ผู้ป่วยในรับบริการ"
* . ^definition = "รหัสชนิดของแผนกที่ผู้ป่วยในรับบริการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_IpdJourney (extensible)






// * hospitalization
//   * extension[0]
//     * url = $EX_TH_IpdDischargeStatus
//     * valueCodeableConcept = $CS_THCC_IpdDischargeStatus#1 "Complete Recovery"
// Alias: $EX_TH_IpdDischargeStatus = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-ipd-discharge-status
Extension: EX_TH_IpdDischargeStatus
Id: ex-encounter-ipd-discharge-status
Title: "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
Description: "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* ^url = $EX_TH_IpdDischargeStatus
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . 0..*
* . ^short = "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* . ^definition = "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_IpdDischargeStatus (extensible)






// * hospitalization
//   * extension[+]
//     * url = $EX_TH_IpdDischargeType 
//     * valueCodeableConcept = $CS_THCC_IpdDischargeType#1 "With Approval"
// Alias: $EX_TH_IpdDischargeType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-ipd-discharge-type
Extension: EX_TH_IpdDischargeType
Id: ex-encounter-ipd-discharge-type
Title: "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
Description: "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* ^url = $EX_TH_IpdDischargeType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . 0..*
* . ^short = "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* . ^definition = "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_IpdDischargeType (extensible)






// * extension[0]
//   * url = $EX_TH_FpCaseType
//   * valueCodeableConcept = $CS_THCC_FpCaseType#1 "รายใหม่" 
// Alias: $EX_TH_FpCaseType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-fp-case-type
Extension: EX_TH_FpCaseType
Id: ex-encounter-fp-case-type
Title: "รหัสประเภทการวางแผนครอบครัว"
Description: "รหัสประเภทการวางแผนครอบครัว"
* ^url = $EX_TH_FpCaseType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter"
* . 0..*
* . ^short = "รหัสประเภทการวางแผนครอบครัว"
* . ^definition = "รหัสประเภทการวางแผนครอบครัว"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_FpCaseType (extensible)






// * extension[0]
//   * url = $EX_TH_ReferEncounterClass
//   * valueCodeableConcept = $CS_THCC_ReferEncounterClass#3 "ผู้ป่วยฉุกเฉิน (ยกเว้นอุบัติเหตุ)"
// Alias: $EX_TH_ReferEncounterClass = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-encounter-class
Extension: EX_TH_ReferEncounterClass
Id: ex-encounter-refer-encounter-class
Title: "รหัสประเภทผู้ป่วยสำหรับการส่งต่อ"
Description: "รหัสประเภทผู้ป่วยสำหรับการส่งต่อ"
* ^url = $EX_TH_ReferEncounterClass
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter"
* . 0..*
* . ^short = "รหัสประเภทผู้ป่วยสำหรับการส่งต่อ"
* . ^definition = "รหัสประเภทผู้ป่วยสำหรับการส่งต่อ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ReferEncounterClass (extensible)






// * extension[+]
//   * url = $EX_TH_ReferResult
//   * valueCodeableConcept = $CS_THCC_ReferResult#1 "ตอบรับการส่งต่อ"
// Alias: $EX_TH_ReferResult = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-result
Extension: EX_TH_ReferResult
Id: ex-encounter-refer-result
Title: "รหัสผลการส่งต่อ"
Description: "รหัสผลการส่งต่อ"
* ^url = $EX_TH_ReferResult
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter"
* . 0..*
* . ^short = "รหัสผลการส่งต่อ"
* . ^definition = "รหัสผลการส่งต่อ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ReferResult (extensible)



// * extension[+]
//   * url = $EX_TH_ReferResultReason
//   * valueString = "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
// Alias: $EX_TH_ReferResultReason = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-result-reason
Extension: EX_TH_ReferResultReason
Id: ex-encounter-refer-result-reason
Title: "เหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
Description: "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
* ^url = $EX_TH_ReferResultReason
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter"
* . 0..*
* . ^short = "เหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
* . ^definition = "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
* value[x] 1..
* value[x] only string



// * extension[0]
//   * url = $EX_TH_LeaveDay
//   * extension[0]
//     * url = "id"
//     * valueString = "XXXX"
//   * extension[+]
//     * url = "leaveDate"
//     * valueDateTime = "2022-05-02"
//   * extension[+]
//     * url = "comeBack"
//     * valueDateTime = "2022-05-03"
//   * extension[+]
//     * url = "duration"
//     * valueDuration = 1 'd' "day"
// Alias: $EX_TH_LeaveDay = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-leave-day
Extension: EX_TH_LeaveDay
Id: ex-encounter-leave-day
Title: "ข้อมูลกรณีที่ผู้ป่วยมีการลากลับบ้าน"
Description: "ข้อมูลกรณีที่ผู้ป่วยมีการลากลับบ้าน"
* ^url = $EX_TH_LeaveDay
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter"
* . 0..*
* . ^short = "ข้อมูลกรณีที่ผู้ป่วยมีการลากลับบ้าน"
* . ^definition = "ข้อมูลกรณีที่ผู้ป่วยมีการลากลับบ้าน"
* extension contains
    id 0..1 and
    leaveDate 0..1 and
    comeBack 0..1 and
    duration 0..1
* extension[id] only Extension
* extension[id] ^short = "ลำดับของการลากลับบ้าน"
* extension[id] ^definition = "ลำดับของการลากลับบ้าน"
  * url only uri
  * value[x] 1..
  * value[x] only string
* extension[leaveDate] only Extension
* extension[leaveDate] ^short = "วัน-เวลาที่ลากลับบ้าน"
* extension[leaveDate] ^definition = "วัน-เวลาที่ลากลับบ้าน"
  * url only uri
  * value[x] 1..
  * value[x] only dateTime
* extension[comeBack] only Extension
* extension[comeBack] ^short = "วัน-เวลาที่กลับเข้ารับบริการ"
* extension[comeBack] ^definition = "วัน-เวลาที่กลับเข้ารับบริการ"
  * url only uri
  * value[x] 1..
  * value[x] only dateTime
* extension[duration] only Extension
* extension[duration] ^short = "จำนวนวันในการลา"
* extension[duration] ^definition = "จำนวนวันในการลา"
  * url only uri
  * value[x] 1..
  * value[x] only Duration



// Alias: $EX_TH_ProviderType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-provider-type
// Encounter
// * serviceProvider = Reference(Organization/organization-main)
//   * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
//   * extension
//     * url = $EX_TH_ProviderType 
//     * valueCodeableConcept = $CS_THCC_ProviderType#1 "Main Contractor"
Extension: EX_TH_ProviderType
Id: ex-encounter-provider-type
Title: "รหัสประเภทสถานพยาบาลที่รักษา"
Description: "รหัสประเภทสถานพยาบาลที่รักษา"
* ^url = $EX_TH_ProviderType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.serviceProvider"
* . 0..*
* . ^short = "รหัสประเภทสถานพยาบาลที่รักษา"
* . ^definition = "รหัสประเภทสถานพยาบาลที่รักษา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ProviderType (extensible)



// Encounter
// Alias: $EX_TH_ReferOutID = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-refer-out-id
// * hospitalization
//   * destination = Reference(Organization/organization-third)
//     * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
//     * extension[0]
//       * url = $EX_TH_ReferOutID
//       * valueReference = Reference(ServiceRequest/servicerequest-refer-out-accident1)
//         * insert GeneralReference($ID_LO_Refer, "XXXXX", "ใบส่งตัวเลขที่ XXXXX")
Extension: EX_TH_ReferOutID
Id: ex-encounter-refer-out-id
Title: "เลขที่ใบส่งตัว"
Description: "เลขที่ใบส่งตัว"
* ^url = $EX_TH_ReferOutID
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization.destination"
* . 0..*
* . ^short = "เลขที่ใบส่งตัว"
* . ^definition = "เลขที่ใบส่งตัว"
* value[x] 1..
* value[x] only Reference(ServiceRequest)


