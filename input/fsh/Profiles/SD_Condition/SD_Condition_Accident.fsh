Profile: MophPcConditionAccident
Parent: $SD_Condition_Base
Id: mophpc-condition-accident
Title: "MoPH-PC Condition: Accident"
Description: "ข้อมูลการวินิจฉัย สำหรับผู้ป่วยอุบัติเหตุ"
* ^url = $SD_Condition_Accident
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension[dueTo] ^short = "รหัสสาเหตุของอุบัติเหตุ"
* extension[dueTo].value[x] only CodeableConcept
* extension[dueTo].value[x] from $VS_THCC_AccidentCauseGroup (required)
* clinicalStatus MS
* code MS
