Profile: Moph43pConditionSurveillance
Parent: $SD_Condition
Id: moph43p-condition-surveillance
Title: "MoPH43p Condition: Surveillance"
Description: "ข้อมูลการวินิจฉัยแรกรับ สำหรับการรับบริการ Surveillance"
* ^url = $SD_Condition_Surveillance
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_HL7_ConditionDueTo named conditionDueTo 0..* MS and
    $EX_HL7_ConditionAssertedDate named assertedDate 0..1 MS
* extension[conditionDueTo] ^short = "สาเหตุ"
* extension[assertedDate] ^short = "วันพบผู้ป่วย"
* code ^short = "รหัสโรคที่ต้องเฝ้าระวังจากสำนักระบาดวิทยา"