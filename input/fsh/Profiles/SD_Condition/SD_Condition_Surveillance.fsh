Profile: Moph43pConditionSurveillance
Parent: $SD_Condition_Base
Id: moph43p-condition-surveillance
Title: "MoPH43p Condition: Surveillance"
Description: "ข้อมูลการวินิจฉัย สำหรับการรับบริการ Surveillance"
* ^url = $SD_Condition_Surveillance
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_HL7_ConditionDueTo named dueTo 0..* MS and
    $EX_HL7_ConditionAssertedDate named assertedDate 0..1 MS
* extension[dueTo] ^short = "ชนิดของเชื้อโรค"
* extension[dueTo].value[x] only CodeableConcept
* extension[dueTo].value[x] from $VS_THCC_CausativeAgent (required)
* extension[assertedDate] ^short = "วันพบผู้ป่วย"
* clinicalStatus MS
* clinicalStatus.coding ^slicing.discriminator.type = #pattern
* clinicalStatus.coding ^slicing.discriminator.path = "$this"
* clinicalStatus.coding ^slicing.rules = #open
* clinicalStatus.coding contains
    hl7 0..1 MS and
    thcc 0..1 MS
* clinicalStatus.coding[hl7] from $VS_HL7_ConditionStatus (required)
* clinicalStatus.coding[hl7].system 1..
* clinicalStatus.coding[hl7].system = $CS_HL7_ConditionStatus (exactly)
* clinicalStatus.coding[hl7].code 1..
* clinicalStatus.coding[thcc] from $VS_PCU_ClnicalStatus (extensible)
* clinicalStatus.coding[thcc].system 1..
* clinicalStatus.coding[thcc].system = $CS_PCU_ClnicalStatus (exactly)
* clinicalStatus.coding[thcc].code 1..
* code MS
* code ^short = "รหัสวินิฉัยโรค/ภาวะโรค"
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    thcc 0..1 MS
* code.coding[thcc] ^short = "รหัสโรคที่ต้องเฝ้าระวังจากสำนักระบาดวิทยา"
* code.coding[thcc] from $VS_THCC_DiseaseCause (extensible)
* code.coding[thcc].system 1..
* code.coding[thcc].system = $CS_THCC_DiseaseCause (exactly)
* code.coding[thcc].code 1..



