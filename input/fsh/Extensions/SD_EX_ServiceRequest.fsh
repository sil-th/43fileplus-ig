// Alias: $EX_TH_ServiceRequestReferOutcome = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-encounter-refer-outcome
// * extension[0]
//   * url = $EX_TH_ServiceRequestReferOutcome 
//   * valueCodeableConcept = $CS_PCU_ReferOutcome#1 "สถานบริการปลายทางรับการส่งต่อผู้ป่วย"
Extension: EX_TH_ServiceRequestReferOutcome
Id: ex-servicerequest-refer-outcome
Title: "ServiceRequest: Refer Outcome"
Description: "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* ^url = $EX_TH_ServiceRequestReferOutcome
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* . ^definition = "รหัสผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* url = $EX_TH_ServiceRequestReferOutcome (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_PCU_ReferOutcome (extensible)







// Alias: $EX_TH_ServiceRequestReferRequesterDetail = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-requester-detail
// * extension[0]
//   * url = $EX_TH_ServiceRequestReferRequesterDetail
//   * extension[0]
//     * url = "organization"
//     * valueReference = Reference(Organization/organization-main)
//       * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")
//   * extension[+]
//     * url = "department"
//     * valueReference.display = "แผนกเวชศาสตร์ฉุกเฉิน"
Extension: EX_TH_ServiceRequestReferRequesterDetail
Id: ex-servicerequest-refer-requester-detail
Title: "ServiceRequest: Refer Requester Detail"
Description: "สถานพยาบาล และแผนกที่ส่งต่อผู้ป่วย (ต้นทาง)"
* ^url = $EX_TH_ServiceRequestReferRequesterDetail
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "สถานพยาบาล และแผนกที่ส่งต่อผู้ป่วย (ต้นทาง)"
* . ^definition = "สถานพยาบาล และแผนกที่ส่งต่อผู้ป่วย (ต้นทาง)"
* url = $EX_TH_ServiceRequestReferRequesterDetail (exactly)
* extension contains
    organization 0..1 and
    department 0..1
* extension[organization] only Extension
* extension[organization] ^short = "สถานพยาบาลที่ส่งต่อผู้ป่วย (ต้นทาง)"
* extension[organization] ^definition = "สถานพยาบาลที่ส่งต่อผู้ป่วย (ต้นทาง)"
  * url = "organization" (exactly)
  * value[x] 1..
  * value[x] only Reference(Organization)
* extension[department] only Extension
* extension[department] ^short = "แผนกที่ส่งต่อผู้ป่วย (ต้นทาง)"
* extension[department] ^definition = "แผนกที่ส่งต่อผู้ป่วย (ต้นทาง)"
  * url = "department" (exactly)
  * value[x] 1..
  * value[x] only Reference(Organization)




// Alias: $EX_TH_ServiceRequestReferStatus = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-status
// * extension[+]
//   * url = $EX_TH_ServiceRequestReferStatus
//   * valueCodeableConcept = $CS_Std15_ReferStatus#A "Accepted"
Extension: EX_TH_ServiceRequestReferStatus
Id: ex-servicerequest-refer-status
Title: "ServiceRequest: Refer Status"
Description: "รหัสสถานะของการอ้างอิงการส่งต่อผู้ป่วย"
* ^url = $EX_TH_ServiceRequestReferStatus
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "รหัสสถานะของการอ้างอิงการส่งต่อผู้ป่วย"
* . ^definition = "รหัสสถานะของการอ้างอิงการส่งต่อผู้ป่วย"
* url = $EX_TH_ServiceRequestReferStatus (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ReferReason (extensible)




// Alias: $EX_TH_ServiceRequestReferRequestedPeriod = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-requested-period
// * extension[+]
//   * url = $EX_TH_ServiceRequestReferRequestedPeriod
//   * valuePeriod.end = "2021-04-30T12:30:02+07:00"
Extension: EX_TH_ServiceRequestReferRequestedPeriod
Id: ex-servicerequest-refer-requested-period
Title: "ServiceRequest: Refer Requested Period"
Description: "วันที่กำหนดสิ้นสุดการตอบรับ หรือปฎิเสธ"
* ^url = $EX_TH_ServiceRequestReferRequestedPeriod
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "วันที่กำหนดสิ้นสุดการตอบรับ หรือปฎิเสธ"
* . ^definition = "วันที่กำหนดสิ้นสุดการตอบรับ หรือปฎิเสธ"
* url = $EX_TH_ServiceRequestReferRequestedPeriod (exactly)
* value[x] 1..
* value[x] only Period





// Alias: $EX_TH_ServiceRequestReferAnswerType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-answer-type
// * extension[+]
//   * url = $EX_TH_ServiceRequestReferAnswerType
//   * valueCodeableConcept = $CS_Std15_ReferAnswerType#1 "Accepted"
Extension: EX_TH_ServiceRequestReferAnswerType
Id: ex-servicerequest-refer-answer-type
Title: "ServiceRequest: Refer Answer Type"
Description: "รหัสประเภทการตอบรับหรือปฎิเสธ อัตโนมัติ"
* ^url = $EX_TH_ServiceRequestReferAnswerType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "รหัสประเภทการตอบรับหรือปฎิเสธ อัตโนมัติ"
* . ^definition = "รหัสประเภทการตอบรับหรือปฎิเสธ อัตโนมัติ"
* url = $EX_TH_ServiceRequestReferAnswerType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_Std15_ReferAnswerType (extensible)





// Alias: $EX_TH_ServiceRequestThaiReferPriority = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-thai-priority
// * priority = #stat
//   * extension[+]
//     * url = $EX_TH_ServiceRequestThaiReferPriority
//     * valueCodeableConcept
//       * coding[0] = $CS_THCC_ReferThaiPriority#2 "emergency"
//       * coding[+] = $CS_eClaim_ReferThaiPriority#E "Emergency"
Extension: EX_TH_ServiceRequestThaiReferPriority
Id: ex-servicerequest-thai-refer-priority
Title: "ServiceRequest: Thai Refer Priority"
Description: "รหัสระดับความเร่งด่วน"
* ^url = $EX_TH_ServiceRequestThaiReferPriority
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest.priority"
* . 0..*
* . ^short = "รหัสระดับความเร่งด่วน"
* . ^definition = "รหัสระดับความเร่งด่วน"
* url = $EX_TH_ServiceRequestThaiReferPriority (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ReferThaiPriority (extensible)








// Alias: $EX_TH_ServiceRequestReferPriorityCode = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-priority-code
// * extension[+]
//   * url = $EX_TH_ServiceRequestReferPriorityCode
//   * valueCodeableConcept = $CS_eClaim_ReferPriorityCode#1 "ต้องการรักษาเป็นการด่วน"
Extension: EX_TH_ServiceRequestReferPriorityCode
Id: ex-servicerequest-refer-priority-code
Title: "ServiceRequest: Refer Priority Code"
Description: "รหัสข้อบ่งชี้ของกรณีฉุกเฉินตามเงื่อนไข"
* ^url = $EX_TH_ServiceRequestReferPriorityCode
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "รหัสข้อบ่งชี้ของกรณีฉุกเฉินตามเงื่อนไข"
* . ^definition = "รหัสข้อบ่งชี้ของกรณีฉุกเฉินตามเงื่อนไข"
* url = $EX_TH_ServiceRequestReferPriorityCode (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ReferPriorityCode (extensible)




// Alias: $EX_TH_ServiceRequestEclaimReferType = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-type-eclaim
// * extension[+]
//   * url = $EX_TH_ServiceRequestEclaimReferType
//   * valueCodeableConcept = $CS_eClaim_ReferTypeEclaim#E "ฉุกเฉิน"
Extension: EX_TH_ServiceRequestEclaimReferType
Id: ex-servicerequest-refer-type-eclaim
Title: "ServiceRequest: E-claim Refer Type"
Description: "รหัสสาเหตุการส่งต่อผู้ป่วย"
* ^url = $EX_TH_ServiceRequestEclaimReferType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "รหัสสาเหตุการส่งต่อผู้ป่วย"
* . ^definition = "รหัสสาเหตุการส่งต่อผู้ป่วย"
* url = $EX_TH_ServiceRequestEclaimReferType (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ReferTypeEclaim (extensible)





// Alias: $EX_TH_ServiceRequestSpecialDiseaseRefer = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-refer-special-disease
// * extension[+]
//   * url = $EX_TH_ServiceRequestSpecialDiseaseRefer
//   * valueCodeableConcept = $CS_43File_ReferSpecialDisease#99 "อื่นๆ"
Extension: EX_TH_ServiceRequestSpecialDiseaseRefer
Id: ex-servicerequest-refer-special-disease
Title: "ServiceRequest: Special Disease Refer"
Description: "รหัสกลุ่มโรคเฉพาะเพื่อการส่งต่อ"
* ^url = $EX_TH_ServiceRequestSpecialDiseaseRefer
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "รหัสกลุ่มโรคเฉพาะเพื่อการส่งต่อ"
* . ^definition = "รหัสกลุ่มโรคเฉพาะเพื่อการส่งต่อ"
* url = $EX_TH_ServiceRequestSpecialDiseaseRefer (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_43File_ReferSpecialDisease (extensible)


