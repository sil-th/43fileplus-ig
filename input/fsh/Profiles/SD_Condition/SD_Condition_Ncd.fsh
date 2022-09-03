Profile: Moph43pConditionNcd
Parent: $SD_Condition_Base
Id: moph43p-condition-ncd
Title: "MoPH43p Condition: NCD"
Description: "ข้อมูลการวินิจฉัยโรคหลักในบริการ OPD ปฐมภูมิ"
* ^url = $SD_Condition_Ncd
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_ConditionIsChronic named isChronic 0..1 MS
* extension[isChronic] ^short = "โรคเรื้อรังหรือไม่"