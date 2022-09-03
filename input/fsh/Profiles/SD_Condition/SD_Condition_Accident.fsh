Profile: Moph43pConditionAccident
Parent: $SD_Condition_Base
Id: moph43p-condition-accident
Title: "MoPH43p Condition: Accident"
Description: "ข้อมูลการวินิจฉัย สำหรับผู้ป่วยอุบัติเหตุ"
* ^url = $SD_Condition_Accident
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_HL7_ConditionDueTo named dueTo 0..* MS
* extension[dueTo] ^short = "รหัสสาเหตุของอุบัติเหตุ"
* extension[dueTo].value[x] only CodeableConcept
* extension[dueTo].value[x] from $VS_THCC_AccidentCauseGroup (required)
* clinicalStatus MS
* code MS
