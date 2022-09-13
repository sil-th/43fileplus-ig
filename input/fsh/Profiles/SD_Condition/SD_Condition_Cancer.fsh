Profile: Moph43pConditionCancer
Parent: $SD_Condition_Base
Id: moph43p-condition-cancer
Title: "MoPH43p Condition: Cancer"
Description: "ข้อมูลการวินิจฉัยโรคมะเร็ง"
* ^url = $SD_Condition_Cancer
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* code.coding contains
    icdo3 0..1 and
    eClaim 0..1
* code.coding[icdo3] from $VS_INT_ICDO3 (required)
* code.coding[icdo3].system 1..
* code.coding[icdo3].system = $ICDO3 (exactly)
* code.coding[icdo3].code 1..
* code.coding[eClaim] from $VS_eClaim_CancerType (required)
* code.coding[eClaim].system 1..
* code.coding[eClaim].system = $CS_eClaim_CancerType (exactly)
* code.coding[eClaim].code 1..
* stage MS
* evidence MS