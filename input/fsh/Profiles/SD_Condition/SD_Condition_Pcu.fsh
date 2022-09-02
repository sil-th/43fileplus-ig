Profile: Moph43pConditionPcu
Parent: $SD_Condition
Id: moph43p-condition-pcu
Title: "MoPH43p Condition: PCU"
Description: "ข้อมูลการวินิจฉัยโรคหลักในบริการ OPD ปฐมภูมิ"
* ^url = $SD_Condition_Pcu
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_ConditionIsChronic named isChronic 0..1 MS
* extension[isChronic] ^short = "โรคเรื้อรังหรือไม่"