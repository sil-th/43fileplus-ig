Profile: Moph43pConditionDisability
Parent: $SD_Condition
Id: moph43p-condition-disability
Title: "MoPH43p Condition: Disability"
Description: "ข้อมูลผู้พิการ ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ"
* ^url = $SD_Condition_Disability
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_HL7_ConditionDueTo named conditionDueTo 0..* MS
* extension[conditionDueTo] ^short = "สาเหตุความพิการ"
* extension[conditionDueTo] ^min = 0
* severity ^short = "ระดับความรุนแรง"
* severity MS