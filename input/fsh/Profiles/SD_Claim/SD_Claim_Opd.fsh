Profile: Moph43pClaimOPD
Parent: Claim
Id: moph43p-claim-opd
Title: "MoPH43p Claim: OPD"
Description: "ค่าใช้จ่ายการรับบริการ OPD"
* ^url = $SD_Claim_Opd
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
    $EX_TH_ClaimFeeNote named feeNote 0..1 MS
* identifier MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    Inv 0..1 and
    InvLt 0..1
* identifier[Inv].system 1..
* identifier[Inv].system obeys Inv-uri
* identifier[Inv].system ^example.label = "INV namespace"
* identifier[Inv].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/Inv"
* identifier[Inv].value 1..
* identifier[InvLt].system 1..
* identifier[InvLt].system obeys InvLt-uri
* identifier[InvLt].system ^example.label = "INV namespace"
* identifier[InvLt].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/InvLt"
* identifier[InvLt].value 1..
* status MS
* type MS
* type.coding.system = $CS_HL7_ClaimType (exactly)
* type.coding.code = #institutional (exactly)
* use = #claim (exactly)
* use MS
* patient only Reference($SD_Patient)
* patient MS
* created MS
* provider only Reference($SD_Organization_Provider)
* provider MS
* priority MS
* supportingInfo MS
* insurance MS
* insurance.coverage only Reference($SD_Coverage)
* insurance.coverage MS
* insurance.preAuthRef MS
* total MS
* total.value MS
* total.currency = #THB (exactly)
