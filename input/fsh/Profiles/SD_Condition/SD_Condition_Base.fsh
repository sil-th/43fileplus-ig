Profile: Moph43pConditionBase
Parent: Condition
Id: moph43p-condition-base
Title: "MoPH43p Condition"
Description: "ข้อมูลวินิจฉัย/ภาวะโรค"
* ^url = $SD_Condition_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_ConditionChronicDischargeReason named dischargeReason 0..1 MS and
    $EX_HL7_ConditionDueTo named dueTo 0..* and
    $EX_TH_ConditionIsChronic named isChronic 0..1
* extension[dischargeReason] ^short = "สาเหตุจำหน่ายผู้ป่วย"
* extension[dueTo] ^short = "สาเหตุการป่วย (ถ้าสามารถระบุได้)"
* extension[isChronic] ^short = "โรคเรื้อรัง/รักษาต่อเนื่องหรือไม่"
* clinicalStatus MS
* clinicalStatus.coding ^slicing.discriminator.type = #value
* clinicalStatus.coding ^slicing.discriminator.path = "system"
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
* category MS
* code MS
* code ^short = "รหัสวินิฉัยโรค/ภาวะโรค"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10 0..1 MS and
    snomed 0..1
* code.coding[icd10] from $VS_ICD10 (required)
* code.coding[icd10].system 1..
* code.coding[icd10].system = $ICD10 (exactly)
* code.coding[icd10].code 1..
* code.coding[snomed] from $VS_SNOMED_All (required)
* code.coding[snomed].system 1..
* code.coding[snomed].system = $SCT (exactly)
* code.coding[snomed].code 1..
* subject only Reference($SD_Patient_Base)
* subject MS
* onset[x] MS
* recordedDate MS
* asserter only Reference($SD_Practitioner_Base)
* asserter MS
* note MS