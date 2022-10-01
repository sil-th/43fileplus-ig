Profile: MophPcConditionSurveillance
Parent: $SD_Condition_Base
Id: mophpc-condition-surveillance
Title: "MoPH-PC Condition: Surveillance"
Description: "ข้อมูลการวินิจฉัย สำหรับการรับบริการ Surveillance"
* ^url = $SD_Condition_Surveillance
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_HL7_ConditionAssertedDate named assertedDate 0..1 MS
* extension[dueTo] ^short = "ชนิดของเชื้อโรค"
* extension[dueTo].value[x] only CodeableConcept
* extension[dueTo].value[x] from $VS_THCC_CausativeAgent (required)
* extension[assertedDate] ^short = "วันพบผู้ป่วย"
* code.coding contains
    thccSurv 0..1 MS
* code.coding[thccSurv] ^short = "รหัสโรคที่ต้องเฝ้าระวังจากสำนักระบาดวิทยา"
* code.coding[thccSurv] from $VS_THCC_DiseaseCause (extensible)
* code.coding[thccSurv].system 1..
* code.coding[thccSurv].system = $CS_THCC_DiseaseCause (exactly)
* code.coding[thccSurv].code 1..



