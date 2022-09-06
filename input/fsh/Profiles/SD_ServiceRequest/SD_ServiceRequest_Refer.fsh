Profile: Moph43pServiceRequestRefer
Parent: ServiceRequest
Id: moph43p-servicerequest-refer
Title: "MoPH43p ServiceRequest: Refer"
Description: "การส่งต่อผู้ป่วยระหว่างสถานพยาบาล"
* ^url = $SD_ServiceRequest_Refer
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_ServiceRequestReferRequesterDetail named requesterDetail 0..1 MS and
    $EX_TH_ServiceRequestReferStatus named referStatus 0..1 MS and
    $EX_TH_ServiceRequestReferResultReason named resultReason 0..1 MS and
    $EX_TH_ServiceRequestReferRequestedPeriod named requestedPeriod 0..1 MS and
    $EX_HL7_PreCondition named preCondition 0..1 MS
* extension[requesterDetail] ^short = "รายละเอียดการส่งต่อผู้ป่วย"
* extension[referStatus] ^short = "สถานะการส่งต่อผู้ป่วย"
* extension[resultReason] ^short = "ใช้ในกรณีต้องการอธิบายเหตุผลที่ไม่สามารถรับผู้ป่วยไว้รักษาต่อได้"
* extension[requestedPeriod] ^short = "ช่วงเวลาที่ขอส่งต่อผู้ป่วย"
* extension[preCondition] ^short = "สถานะของผู้ป่วยก่อนหรือระหว่างการส่งต่อ"
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
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains
    thcc 0..1 MS and
    43plus 0..1 MS and
    std15 0..1 MS and
    eclaim 0..1 MS
* category[thcc] from $VS_THCC_ReferReason (extensible)
* category[43plus] from $VS_43Plus_ReferReason (extensible)
* category[std15] from $VS_Std15_ReferReason (extensible)
* category[eclaim] from $VS_eClaim_ReferReason (extensible)
* priority
* extension contains
  $EX_TH_ServiceRequestThaiReferPriority named thaiReferPriority 0..1 MS and
  $EX_TH_ServiceRequestReferPriorityReason named priorityReason 0..1 MS
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
* reasonCode MS
* reasonCode ^slicing.discriminator[0].type = #pattern
* reasonCode ^slicing.discriminator[=].path = "$this"
* reasonCode ^slicing.rules = #open
* reasonCode contains
    specialDisease 1..1 MS
* reasonCode[specialDisease] from $VS_43File_ReferSpecialDisease (extensible)
* reasonCode[specialDisease] ^short = "การส่งต่อผู้ป่วยโรคเฉพาะทาง"
