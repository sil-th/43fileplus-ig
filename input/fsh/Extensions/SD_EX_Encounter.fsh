// * extension[0]
//   * url = $EX_TH_EncounterDeathLocType
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_DeathLocType#1 "ในสถานพยาบาล"
//     * text = "ในสถานพยาบาล"
// Alias: $EX_TH_EncounterDeathLocType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-death-location-type
Extension: EX_TH_EncounterDeathLocType
Id: ex-encounter-death-location-type
Title: "Encounter: Death Location Type"
Description: "รหัสสถานที่ตาย"
* ^url = $EX_TH_EncounterDeathLocType
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
* url = $EX_TH_EncounterDeathLocType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_DeathLocType (extensible)






// * extension[+]
//   * url = $EX_TH_EncounterDeathPregnancy (exactly)
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_DeathPregnancy#3 "ไม่ตั้งครรภ์"
//     * text = "ไม่ตั้งครรภ์"
// Alias: $EX_TH_EncounterDeathPregnancy = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-death-pregnancy
Extension: EX_TH_EncounterDeathPregnancy
Id: ex-encounter-death-pregnancy
Title: "Encounter: Pregnancy-related Death"
Description: "การเสียชีวิตที่เกี่ยวข้องกับตั้งครรภ์และการคลอด"
* ^url = $EX_TH_EncounterDeathPregnancy
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
* url = $EX_TH_EncounterDeathPregnancy (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_DeathPregnancy (extensible)





// * subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
//   * extension
//     * url = $EX_TH_EncounterPatientLocationType  (exactly)
//     * valueCodeableConcept = $CS_THCC_PatientLocationType#1 "ในเขตรับผิดชอบ"
// Alias: $EX_TH_EncounterPatientLocationType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-patient-location-type
Extension: EX_TH_EncounterPatientLocationType
Id: ex-encounter-patient-location-type
Title: "Encounter: Patient Location Type"
Description: "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* ^url = $EX_TH_EncounterPatientLocationType
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
* url = $EX_TH_EncounterPatientLocationType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_PatientLocationType (extensible)






// * period
//   * extension
//     * url = $EX_TH_EncounterServiceHour  (exactly)
//     * valueCodeableConcept = $CS_THCC_ServiceHour#1 "ในเวลาราชการ"
// Alias: $EX_TH_EncounterServiceHour = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-service-hour
Extension: EX_TH_EncounterServiceHour
Id: ex-encounter-service-hour
Title: "Encounter: Service Hour"
Description: "รหัสเวลามารับบริการ"
* ^url = $EX_TH_EncounterServiceHour
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
* url = $EX_TH_EncounterServiceHour (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ServiceHour (extensible)






// * location
//   * extension
//     * url = $EX_TH_EncounterServiceLocationType  (exactly)
//     * valueCodeableConcept = $CS_PCU_ServiceLocationType#1 "ในสถานบริการ"
// Alias: $EX_TH_EncounterServiceLocationType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-service-location-type
Extension: EX_TH_EncounterServiceLocationType
Id: ex-encounter-service-location-type
Title: "Encounter: Service Location Type"
Description: "รหัสสถานที่ที่ให้บริการ"
* ^url = $EX_TH_EncounterServiceLocationType
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
* url = $EX_TH_EncounterServiceLocationType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_PCU_ServiceLocationType (extensible)






// * extension[0]
//   * url = $EX_TH_EncounterServiceTypeTH  (exactly)
//   * valueCodeableConcept = $CS_eClaim_ServiceTypeTH#0 "Refer ในบัญชีเครือข่ายเดียวกัน"
// Alias: $EX_TH_EncounterServiceTypeTH = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-service-type-th
Extension: EX_TH_EncounterServiceTypeTH
Id: ex-encounter-service-type-th
Title: "Encounter: Thai Service Type"
Description: "รหัสประเภทการให้บริการ"
* ^url = $EX_TH_EncounterServiceTypeTH
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
* url = $EX_TH_EncounterServiceTypeTH (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ServiceTypeTH (extensible)






// * hospitalization
//   * extension[0]
//     * url = $EX_TH_EncounterDischargeStatus  (exactly)
//     * valueCodeableConcept = $CS_THCC_DischargeStatus#3 "ส่งต่อไปยังสถานพยาบาลอื่น"
// Alias: $EX_TH_EncounterDischargeStatus = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-discharge-status
Extension: EX_TH_EncounterDischargeStatus
Id: ex-encounter-discharge-status
Title: "Encounter: Discharge Status"
Description: "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ OPD"
* ^url = $EX_TH_EncounterDischargeStatus
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
* url = $EX_TH_EncounterDischargeStatus (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_DischargeStatus (extensible)





// * hospitalization
//   * extension[+]
//     * url = $EX_TH_EncounterDischargeInstruction (exactly)
//     * valueAnnotation
//       * text = "ใส่คำแนะนำหลังการเข้ารับบริการ"
// Alias: $EX_TH_EncounterDischargeInstruction = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-discharge-instruction
Extension: EX_TH_EncounterDischargeInstruction
Id: ex-encounter-discharge-instruction
Title: "Encounter: Discharge Instruction"
Description: "คำแนะนำหลังการเข้ารับบริการ"
* ^url = $EX_TH_EncounterDischargeInstruction
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
* url = $EX_TH_EncounterDischargeInstruction (exactly)
* value[x] 1..
* value[x] only Annotation






// * location[0]
//   * extension[0]
//     * url = $EX_TH_EncounterIpdJourney  (exactly)
//     * valueCodeableConcept = $CS_Meta_IpdJourney#first "รหัสแผนกที่รับผู้ป่วย"
// Alias: $EX_TH_EncounterIpdJourney = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-ipd-journey
Extension: EX_TH_EncounterIpdJourney
Id: ex-encounter-ipd-journey
Title: "Encounter: IPD Journey"
Description: "รหัสชนิดของแผนกที่ผู้ป่วยในรับบริการ"
* ^url = $EX_TH_EncounterIpdJourney
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
* url = $EX_TH_EncounterIpdJourney (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_Meta_IpdJourney (extensible)






// * hospitalization
//   * extension[0]
//     * url = $EX_TH_EncounterIpdDischargeStatus (exactly)
//     * valueCodeableConcept = $CS_THCC_IpdDischargeStatus#1 "Complete Recovery"
// Alias: $EX_TH_EncounterIpdDischargeStatus = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-ipd-discharge-status
Extension: EX_TH_EncounterIpdDischargeStatus
Id: ex-encounter-ipd-discharge-status
Title: "Encounter: IPD Discharge Status"
Description: "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* ^url = $EX_TH_EncounterIpdDischargeStatus
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
* url = $EX_TH_EncounterIpdDischargeStatus (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_IpdDischargeStatus (extensible)






// * hospitalization
//   * extension[+]
//     * url = $EX_TH_EncounterIpdDischargeType  (exactly)
//     * valueCodeableConcept = $CS_THCC_IpdDischargeType#1 "With Approval"
// Alias: $EX_TH_EncounterIpdDischargeType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-ipd-discharge-type
Extension: EX_TH_EncounterIpdDischargeType
Id: ex-encounter-ipd-discharge-type
Title: "Encounter: IPD Discharge Type"
Description: "รหัสชนิดการจำหน่ายผู้ป่วย"
* ^url = $EX_TH_EncounterIpdDischargeType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . 0..*
* . ^short = "รหัสชนิดการจำหน่ายผู้ป่วย"
* . ^definition = "รหัสชนิดการจำหน่ายผู้ป่วย"
* url = $EX_TH_EncounterIpdDischargeType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_IpdDischargeType (extensible)






// * extension[0]
//   * url = $EX_TH_EncounterFpCaseType (exactly)
//   * valueCodeableConcept = $CS_PCU_FpCaseType#1 "รายใหม่" 
// Alias: $EX_TH_EncounterFpCaseType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-fp-case-type
Extension: EX_TH_EncounterFpCaseType
Id: ex-encounter-fp-case-type
Title: "Encounter: Family Planning Case Type"
Description: "รหัสประเภทการวางแผนครอบครัว"
* ^url = $EX_TH_EncounterFpCaseType
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
* url = $EX_TH_EncounterFpCaseType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_PCU_FpCaseType (extensible)






// * extension[0]
//   * url = $EX_TH_EncounterReferCategory (exactly)
//   * valueCodeableConcept = $CS_43File_ReferEncounterClass#3 "ผู้ป่วยฉุกเฉิน (ยกเว้นอุบัติเหตุ)"
// Alias: $EX_TH_EncounterReferCategory = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-encounter-class
Extension: EX_TH_EncounterReferCategory
Id: ex-encounter-refer-category
Title: "Encounter: Refer Patient Category"
Description: "รหัสประเภทผู้ป่วยสำหรับการส่งต่อ"
* ^url = $EX_TH_EncounterReferCategory
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
* url = $EX_TH_EncounterReferCategory (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_43File_ReferEncounterClass (extensible)






// * extension[+]
//   * url = $EX_TH_EncounterReferResult (exactly)
//   * valueCodeableConcept = $CS_43File_ReferResult#1 "ตอบรับการส่งต่อ"
// Alias: $EX_TH_EncounterReferResult = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-result
Extension: EX_TH_EncounterReferResult
Id: ex-encounter-refer-result
Title: "Encounter: Refer Result"
Description: "รหัสผลการส่งต่อ"
* ^url = $EX_TH_EncounterReferResult
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
* url = $EX_TH_EncounterReferResult (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_43File_ReferResult (extensible)



// * extension[+]
//   * url = $EX_TH_EncounterReferResultReason (exactly)
//   * valueString = "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
// Alias: $EX_TH_EncounterReferResultReason = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-result-reason
Extension: EX_TH_EncounterReferResultReason
Id: ex-encounter-refer-result-reason
Title: "Encounter: Refer Result Reason"
Description: "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
* ^url = $EX_TH_EncounterReferResultReason
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
* url = $EX_TH_EncounterReferResultReason (exactly)
* value[x] 1..
* value[x] only string



// * extension[0]
//   * url = $EX_TH_EncounterLeaveDay
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
// Alias: $EX_TH_EncounterLeaveDay = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-leave-day
Extension: EX_TH_EncounterLeaveDay
Id: ex-encounter-leave-day
Title: "Encounter: Leave Day"
Description: "ข้อมูลกรณีที่ผู้ป่วยมีการลากลับบ้าน"
* ^url = $EX_TH_EncounterLeaveDay
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
* url = $EX_TH_EncounterLeaveDay (exactly)
* extension contains
    id 0..1 and
    leaveDate 0..1 and
    comeBack 0..1 and
    duration 0..1
* extension[id] only Extension
* extension[id] ^short = "ลำดับของการลากลับบ้าน"
* extension[id] ^definition = "ลำดับของการลากลับบ้าน"
  * url = "id" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[leaveDate] only Extension
* extension[leaveDate] ^short = "วัน-เวลาที่ลากลับบ้าน"
* extension[leaveDate] ^definition = "วัน-เวลาที่ลากลับบ้าน"
  * url = "leaveDate" (exactly)
  * value[x] 1..
  * value[x] only dateTime
* extension[comeBack] only Extension
* extension[comeBack] ^short = "วัน-เวลาที่กลับเข้ารับบริการ"
* extension[comeBack] ^definition = "วัน-เวลาที่กลับเข้ารับบริการ"
  * url = "comeBack" (exactly)
  * value[x] 1..
  * value[x] only dateTime
* extension[duration] only Extension
* extension[duration] ^short = "จำนวนวันในการลา"
* extension[duration] ^definition = "จำนวนวันในการลา"
  * url = "duration" (exactly)
  * value[x] 1..
  * value[x] only Duration



// Alias: $EX_TH_EncounterProviderType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-provider-type
// Encounter
// * serviceProvider = Reference(Organization/organization-main)
//   * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
//   * extension
//     * url = $EX_TH_EncounterProviderType 
//     * valueCodeableConcept = $CS_eClaim_ProviderType#1 "Main Contractor"
Extension: EX_TH_EncounterProviderType
Id: ex-encounter-provider-type
Title: "Encounter: Provider Type"
Description: "รหัสประเภทสถานพยาบาลที่รักษา"
* ^url = $EX_TH_EncounterProviderType
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
* url = $EX_TH_EncounterProviderType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ProviderType (extensible)



// Encounter
// Alias: $EX_TH_EncounterReferOutID = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-refer-out-id
// * hospitalization
//   * destination = Reference(Organization/organization-third)
//     * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตติยภูมิ")
//     * extension[0]
//       * url = $EX_TH_EncounterReferOutID
//       * valueReference = Reference(ServiceRequest/servicerequest-refer-out-accident1)
//         * insert GeneralReference($ID_LO_Refer, "XXXXX", "ใบส่งตัวเลขที่ XXXXX")
Extension: EX_TH_EncounterReferOutID
Id: ex-encounter-refer-out-id
Title: "Encounter: Refer Out ID"
Description: "เลขที่ใบส่งตัว"
* ^url = $EX_TH_EncounterReferOutID
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
* url = $EX_TH_EncounterReferOutID (exactly)
* value[x] 1..
* value[x] only Reference(ServiceRequest)


