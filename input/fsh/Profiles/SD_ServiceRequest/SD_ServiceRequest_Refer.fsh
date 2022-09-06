Profile: Moph43pServiceRequestRefer
Parent: ServiceRequest
Id: moph43p-servicerequest-refer
Title: "MoPH43p ServiceRequest: Refer"
Description: "การส่งต่อผู้ป่วยระหว่างสถานพยาบาล"
* ^url = $SD_ServiceRequest_Refer
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_TH_ServiceRequestReferRequesterDetail named requesterDetail 0..1 MS and
    $EX_TH_ServiceRequestReferStatus named referStatus 0..1 MS and
    $EX_TH_ServiceRequestReferOutcome named referOutcome 0..1 MS and
    $EX_TH_ServiceRequestReferRequestedPeriod named requestedPeriod 0..1 MS and
    $EX_TH_ServiceRequestReferAnswerType named referAnswerType 0..1 MS and
    $EX_HL7_PreCondition named preCondition 0..1 MS and
    $EX_TH_ServiceRequestReferPriorityCode named priorityCode 0..1 and
    $EX_TH_ServiceRequestEclaimReferType named eclaimReferType 0..1 MS and
    $EX_TH_ServiceRequestSpecialDiseaseRefer named specialDisease 0..1 MS
* extension[requesterDetail] ^short = "รายละเอียดการส่งต่อผู้ป่วย"
* extension[referStatus] ^short = "สถานะการส่งต่อผู้ป่วย"
* extension[referOutcome] ^short = "ผลการส่งต่อไปรับบริการในสถานพยาบาลอื่น"
* extension[requestedPeriod] ^short = "ช่วงเวลาที่ขอส่งต่อผู้ป่วย"
* extension[referAnswerType] ^short = "การตอบรับการส่งต่อผู้ป่วย"
* extension[preCondition] ^short = "สถานะของผู้ป่วยก่อนหรือระหว่างการส่งต่อ"
* extension[priorityCode] ^short = "รหัสข้อบ่งชี้ของกรณีฉุกเฉินตามเงื่อนไข"
* extension[eclaimReferType] ^short = "ประเภทการส่งต่อผู้ป่วย"
* extension[specialDisease] ^short = "การส่งต่อผู้ป่วยโรคเฉพาะทาง"
* identifier MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    localReferNo 0..1 MS and
    ProvincialReferNo 0..1 MS and
    localReferDocument 0..1 MS
* identifier[localReferNo] ^short = "เลขที่การส่งต่อผู้ป่วย"
* identifier[localReferNo].system 1..
* identifier[localReferNo].system obeys LocalRefer-uri
* identifier[localReferNo].system ^example.label = "Local Refer No namespace"
* identifier[localReferNo].system ^example.valueUri = $ID_LO_Refer
* identifier[localReferNo].value 1..
* identifier[ProvincialReferNo] ^short = "เลขที่การส่งต่อผู้ป่วยกลางของจังหวัด"
* identifier[ProvincialReferNo].system 1..
* identifier[ProvincialReferNo].system obeys ProvincialRefer-uri
* identifier[ProvincialReferNo].system ^example.label = "Local Refer No namespace"
* identifier[ProvincialReferNo].system ^example.valueUri = $ID_LO_ReferProvince
* identifier[ProvincialReferNo].value 1..
* identifier[localReferDocument] ^short = "เลขเอกสารของสถานพยาบาลที่ส่งไป (ต้นทาง)"
* identifier[localReferDocument].system 1..
* identifier[localReferDocument].system obeys LocalReferDocument-uri
* identifier[localReferDocument].system ^example.label = "Local Refer No namespace"
* identifier[localReferDocument].system ^example.valueUri = $ID_LO_ReferDocument
* identifier[localReferDocument].value 1..
* status MS
* intent MS
* category MS
* priority
* extension contains
  $EX_TH_ServiceRequestThaiReferPriority named thaiReferPriority 0..1 MS
* code.coding MS
* code.coding ^slicing.discriminator[0].type = #pattern
* code.coding ^slicing.discriminator[=].path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    referReason 1..1 MS
* code.coding[referReason] from $VS_THCC_ReferReason (extensible)
* code.coding[referReason] ^short = "เหตุผลส่งต่อผู้ป่วย"
* code.coding[referReason].system 1..
* code.coding[referReason].code 1..
* subject MS
* subject only Reference($SD_Patient)
* encounter MS
* encounter only Reference($SD_Encounter_Base)
* authoredOn MS
* requester MS
* requester only Reference($SD_Practitioner)

