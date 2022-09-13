Profile: Moph43pClaimBase
Parent: Claim
Id: moph43p-claim-base
Title: "MoPH43p Claim"
Description: "ค่าใช้จ่ายการรับบริการ"
* ^url = $SD_Claim_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_TH_ClaimTotalCost named totalCost 0..1 MS and
    $EX_TH_ClaimTotalCopay named totalCopay 0..1 MS and
    $EX_TH_ClaimTotalPaid named totalPaid 0..1 MS and
    $EX_TH_ClaimTotalUnpaid named totalUnpaid 0..1 MS and
    $EX_TH_ClaimFeeNote named feeNote 0..1 MS and
    $EX_TH_ClaimIpdDRG named drg 0..1 MS
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    inv 0..1 and
    invLt 0..1
* identifier[inv].type = $CS_TH_IdentifierType#localInvNo
* identifier[inv] ^short = "เลขที่อ้างอิงใบแจ้งหนี้ของหน่วยบริการ"
* identifier[inv].system 1..
* identifier[inv].system obeys Inv-uri
* identifier[inv].system ^example.label = "INV namespace"
* identifier[inv].system ^example.valueUri = $ID_LO_INV
* identifier[inv].value 1..
* identifier[invLt].type = $CS_TH_IdentifierType#localInvLt
* identifier[invLt] ^short = "เลขที่อ้างอิงชุดข้อมูลใบแจ้งหนี้ ของหน่วยบริการ ถ้าไม่มี ใช้ค่าเดียวกับ identifier.inv"
* identifier[invLt].system 1..
* identifier[invLt].system obeys InvLt-uri
* identifier[invLt].system ^example.label = "INV namespace"
* identifier[invLt].system ^example.valueUri = $ID_LO_INV_LT
* identifier[invLt].value 1..
* status MS
* type MS
* type.coding.system = $CS_HL7_ClaimType (exactly)
* type.coding.code = #institutional (exactly)
* use = #claim (exactly)
* use MS
* patient only Reference($SD_Patient_Base)
* patient MS
* created MS
* provider only Reference($SD_Organization_Provider)
* provider MS
* priority MS
* supportingInfo MS
* insurance MS
* insurance.coverage only Reference($SD_Coverage_Base)
* insurance.coverage MS
* insurance.preAuthRef MS
* item MS
  * extension contains
    $EX_TH_ClaimItemCost named itemCost 0..1 MS and
    $EX_TH_ClaimItemCopay named itemCopay 0..1 MS and
    $EX_TH_ClaimItemPaid named itemPaid 0..1 MS and
    $EX_TH_ClaimItemUnpaid named itemUnpaid 0..1 MS
  * category MS
  * category.coding ^slicing.discriminator.type = #pattern
  * category.coding ^slicing.discriminator.path = "$this"
  * category.coding ^slicing.rules = #open
  * category.coding contains
      thCategory 0..1 MS
  * category.coding[thCategory] ^short = "หมวดค่าใช้จ่ายบริการสาธารณสุข"
  * category.coding[thCategory] from $VS_TH_FeeCategory (required)
* item.detail
* item.detail.extension contains
    $EX_TH_ClaimItemCost named itemCost 0..1 and
    $EX_TH_ClaimItemCopay named itemCopay 0..1 and
    $EX_TH_ClaimItemPaid named itemPaid 0..1 and
    $EX_TH_ClaimItemUnpaid named itemUnpaid 0..1
* item.detail.subDetail 
* item.detail.subDetail.extension contains
    $EX_TH_ClaimItemCost named itemCost 0..1 and
    $EX_TH_ClaimItemCopay named itemCopay 0..1 and
    $EX_TH_ClaimItemPaid named itemPaid 0..1 and
    $EX_TH_ClaimItemUnpaid named itemUnpaid 0..1
* total MS
* total.value MS
* total.currency = #THB (exactly)
