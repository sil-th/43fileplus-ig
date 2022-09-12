Profile: Moph43pClaimIPD
Parent: Claim
Id: moph43p-claim-ipd
Title: "MoPH43p Claim: IPD"
Description: "ค่าใช้จ่ายการรับบริการ IPD"
* ^url = $SD_Claim_Ipd 
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
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
    Inv 0..1 and
    InvLt 0..1
* identifier[Inv].type = $CS_TH_IdentifierType#localInvNo
* identifier[Inv].system 1..
* identifier[Inv].system obeys Inv-uri
* identifier[Inv].system ^example.label = "INV namespace"
* identifier[Inv].system ^example.valueUri = $ID_LO_INV
* identifier[Inv].value 1..
* identifier[InvLt].type = $CS_TH_IdentifierType#localInvLt
* identifier[InvLt].system 1..
* identifier[InvLt].system obeys InvLt-uri
* identifier[InvLt].system ^example.label = "INV namespace"
* identifier[InvLt].system ^example.valueUri = $ID_LO_INV_LT
* identifier[InvLt].value 1..
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
* insurance.coverage only Reference($SD_Coverage)
* insurance.coverage MS
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
* item.detail.extension contains
    $EX_TH_ClaimItemCost named itemCost 0..1 and
    $EX_TH_ClaimItemCopay named itemCopay 0..1 and
    $EX_TH_ClaimItemPaid named itemPaid 0..1 and
    $EX_TH_ClaimItemUnpaid named itemUnpaid 0..1
* item.detail.subDetail.extension contains
    $EX_TH_ClaimItemCost named itemCost 0..1 and
    $EX_TH_ClaimItemCopay named itemCopay 0..1 and
    $EX_TH_ClaimItemPaid named itemPaid 0..1 and
    $EX_TH_ClaimItemUnpaid named itemUnpaid 0..1