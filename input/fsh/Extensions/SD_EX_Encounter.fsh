
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






Extension: EX_TH_EncounterDischargeStatus
Id: ex-encounter-discharge-status
Title: "Encounter: Discharge Status"
Description: "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ"
* ^url = $EX_TH_EncounterDischargeStatus
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . 0..*
* . ^short = "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ"
* . ^definition = "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ"
* url = $EX_TH_EncounterDischargeStatus (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  thccService 0..1 MS and
  thccChronic 0..1 MS
* valueCodeableConcept.coding[thccService] from $VS_THCC_DischargeStatus (required)
* valueCodeableConcept.coding[thccChronic] from $VS_THCC_ChronicDischargeReason (required)




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






Extension: EX_TH_EncounterIpdDischargeStatus
Id: ex-encounter-ipd-discharge-status
Title: "Encounter: IPD Discharge Status"
Description: "รหัสสถานภาพการจำหน่ายผู้ป่วย"
* ^url = $EX_TH_EncounterIpdDischargeStatus
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . 0..*
* . ^short = "รหัสสถานภาพการจำหน่ายผู้ป่วย"
* . ^definition = "รหัสสถานภาพการจำหน่ายผู้ป่วย"
* url = $EX_TH_EncounterIpdDischargeStatus (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_IpdDischargeStatus (extensible)






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


