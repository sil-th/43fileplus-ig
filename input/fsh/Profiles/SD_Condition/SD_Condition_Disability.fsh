Profile: Moph43pConditionDisability
Parent: $SD_Condition
Id: moph43p-condition-disability
Title: "Condition - Disability (MoPH43p)"
Description: "ข้อมูลผู้พิการ ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ"
* ^url = $SD_Condition_Disability
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_HL7_ConditionDueTo named conditionDueTo 0..* MS and
    $EX_TH_DisabilityType named disabilityType 0..* MS
* extension[conditionDueTo] ^short = "สาเหตุความพิการ"
* extension[conditionDueTo] ^min = 0
* extension[disabilityType] ^short = "ประเภทความพิการ"
* extension[disabilityType] ^min = 0
* severity ^short = "ระดับความรุนแรง"
* severity MS