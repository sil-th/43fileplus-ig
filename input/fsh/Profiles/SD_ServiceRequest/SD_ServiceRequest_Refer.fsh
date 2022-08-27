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
    $EX_TH_ReferRequesterDetail named detail 0..1 MS and
    $EX_TH_ReferStatus named referStatus 0..1 MS and
    $EX_TH_ReferRequestedPeriod named referPeriod 0..1 MS and
    $EX_TH_ReferAnswerType named answerType 0..1 MS and
    $EX_HL7_PreCondition named preCondition 0..1 MS and
    $EX_TH_ReferTypeEclaim named referType 0..1 MS and
    $EX_TH_ReferSpecialDisease named specialDisease 0..1 MS
* extension[detail] ^short = "รายละเอียดการส่งต่อผู้ป่วย"
* extension[referStatus] ^short = "สถานะการส่งต่อผู้ป่วย"
* extension[referPeriod] ^short = "ช่วงเวลาที่ขอส่งต่อผู้ป่วย"
* extension[answerType] ^short = "การตอบรับการส่งต่อผู้ป่วย"
* extension[preCondition] ^short = "สถานะของผู้ป่วยก่อนหรือระหว่างการส่งต่อ"
* extension[referType] ^short = "ประเภทการส่งต่อผู้ป่วย"
* extension[specialDisease] ^short = "การส่งต่อผู้ป่วยโรคเฉพาะทาง"
* identifier MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    localReferNo 0..1 MS
* identifier[localReferNo] ^short = "หมายเลขการส่งต่อผู้ป่วย"
* identifier[localReferNo] ^comment = "หมายเลขการส่งต่อผู้ป่วยในสถานบริการนั้นๆ"
* identifier[localReferNo].system = $CS_THCC_ReferReason (exactly)
* identifier[localReferNo].system 1..
* identifier[localReferNo].system obeys LocalRefer-uri
* identifier[localReferNo].system ^example.label = "Local Refer No namespace"
* identifier[localReferNo].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/Refer"
* identifier[localReferNo].value 1..
* status MS
* intent MS
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "$coding.system"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "$coding.code"
* category ^slicing.rules = #open
* category contains
    referReason 1..1 MS
* category[referReason] from $VS_THCC_ReferReason (extensible)
* category[referReason] ^short = "เหตุผลส่งต่อผู้ป่วย"
* category[referReason].coding.system 1..
* category[referReason].coding.code 1..
* subject MS
* subject only Reference($SD_Patient)
* encounter MS
* encounter only Reference($SD_Encounter)
* authoredOn MS
* requester MS
* requester only Reference($SD_Practitioner)

