
Extension: EX_TH_ServiceRequestReferPatientCatagory
Id: ex-servicerequest-refer-patient-category
Title: "ServiceReques: Refer Patient Category"
Description: "รหัสประเภทผู้ป่วยสำหรับการส่งต่อ"
* ^url = $EX_TH_ServiceRequestReferPatientCatagory
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceReques"
* . 0..*
* . ^short = "รหัสประเภทผู้ป่วยสำหรับการส่งต่อ"
* . ^definition = "รหัสประเภทผู้ป่วยสำหรับการส่งต่อ"
* url = $EX_TH_ServiceRequestReferPatientCatagory (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  43file 0..1 MS and
  eclaim 0..1 MS
* valueCodeableConcept.coding[43file] from $VS_eClaim_ReferPriorityCode (required)
* valueCodeableConcept.coding[eclaim] from $VS_eClaim_ReferTypeEclaim (required)








Extension: EX_TH_ServiceRequestReferStatus
Id: ex-servicerequest-refer-status
Title: "ServiceRequest: Refer Status"
Description: "รหัสสถานะหรือผลการส่งต่อผู้ป่วย"
* ^url = $EX_TH_ServiceRequestReferStatus
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "รหัสสถานะหรือผลการส่งต่อผู้ป่วย"
* . ^definition = "รหัสสถานะหรือผลการส่งต่อผู้ป่วย"
* url = $EX_TH_ServiceRequestReferStatus (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  43file 0..1 and
  std15answer 0..1 and
  std15referStatus 0..1 and
  pcuReferOutcome 0..1
* valueCodeableConcept.coding[43file] from $VS_43File_ReferResult (required)
* valueCodeableConcept.coding[std15answer] from $VS_Std15_ReferAnswerType (required)
* valueCodeableConcept.coding[std15referStatus] from $VS_Std15_ReferStatus (required)
* valueCodeableConcept.coding[pcuReferOutcome] from $VS_PCU_ReferOutcome (required)



Extension: EX_TH_ServiceRequestReferResultReason
Id: ex-servicerequest-refer-result-reason
Title: "ServiceRequest: Refer Result Reason"
Description: "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
* ^url = $EX_TH_ServiceRequestReferResultReason
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "เหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
* . ^definition = "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
* url = $EX_TH_ServiceRequestReferResultReason (exactly)
* value[x] 1..
* value[x] only string



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
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  43file 0..1 and
  eClaim 0..1
* valueCodeableConcept.coding[43file] from $VS_THCC_ReferThaiPriority (required)
* valueCodeableConcept.coding[eClaim] from $VS_eClaim_ReferThaiPriority (required)





Extension: EX_TH_ServiceRequestReferPriorityReason
Id: ex-servicerequest-refer-priority-reason
Title: "ServiceRequest: Refer Priority Reason"
Description: "ข้อบ่งชี้/ชนิดของการส่งต่อ"
* ^url = $EX_TH_ServiceRequestReferPriorityReason
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "ServiceRequest.priority"
* . 0..*
* . ^short = "รหัสข้อบ่งชี้ของกรณีฉุกเฉินตามเงื่อนไข"
* . ^definition = "รหัสข้อบ่งชี้ของกรณีฉุกเฉินตามเงื่อนไข"
* url = $EX_TH_ServiceRequestReferPriorityReason (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  eClaimReason 0..1
* valueCodeableConcept.coding[eClaimReason] from $VS_eClaim_ReferPriorityCode (required)

