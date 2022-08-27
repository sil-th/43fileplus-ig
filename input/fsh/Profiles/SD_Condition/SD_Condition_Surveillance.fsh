Profile: Moph43pConditionSurveillance
Parent: $SD_Condition
Id: moph43p-condition-surveillance
Title: "MoPH43p Condition: Surveillance"
Description: "ข้อมูลการวินิจฉัยแรกรับ สำหรับการรับบริการ Surveillance"
* ^url = $SD_Condition_Surveillance
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_HL7_ConditionDueTo named conditionDueTo 0..* MS and
    $EX_HL7_ConditionAssertedDate named assertedDate 0..1 MS
* extension[conditionDueTo] ^short = "สาเหตุ"
* extension[conditionDueTo] ^min = 0
* extension[assertedDate] ^short = "วันพบผู้ป่วย"
* extension[assertedDate] ^min = 0
* code ^short = "รหัสโรคที่ต้องเฝ้าระวังจากสำนักระบาดวิทยา"