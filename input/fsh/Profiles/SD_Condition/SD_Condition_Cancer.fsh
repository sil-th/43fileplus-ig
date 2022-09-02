Profile: Moph43pConditionCancer
Parent: $SD_Condition
Id: moph43p-condition-cancer
Title: "MoPH43p Condition: Cancer"
Description: "ข้อมูลการวินิจฉัยโรคมะเร็ง"
* ^url = $SD_Condition_Cancer
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_ConditionChronicDischargeReason named dischargeReason 0..1 MS
* extension[dischargeReason] ^short = "สาเหตุจำหน่ายผู้ป่วย"
* extension[dischargeReason] ^min = 0
* code.coding contains
    icdo3 0..1 and
    eClaim 0..1
* code.coding[icdo3].system 1..
* code.coding[icdo3].system = $ICDO3 (exactly)
* code.coding[icdo3].code 1..
* code.coding[eClaim].system 1..
* code.coding[eClaim].system = $CS_eClaim_CancerType (exactly)
* code.coding[eClaim].code 1..
* stage MS
* evidence MS