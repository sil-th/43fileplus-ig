Profile: MophPcConditionDisability
Parent: $SD_Condition_Base
Id: mophpc-condition-disability
Title: "MoPH-PC Condition: Disability"
Description: "ข้อมูลผู้พิการ ทุกคนที่อาศัยอยู่ในเขตรับผิดชอบ"
* ^url = $SD_Condition_Disability
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension[dueTo] ^short = "สาเหตุความพิการ"
* extension[dueTo].valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* extension[dueTo].valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* extension[dueTo].valueCodeableConcept.coding ^slicing.rules = #open
* extension[dueTo].valueCodeableConcept.coding contains
    thcc 0..1 MS and
    icd10 0..1 MS
* extension[dueTo].valueCodeableConcept.coding[thcc] from $VS_THCC_DisabilityReason (extensible)
* extension[dueTo].valueCodeableConcept.coding[thcc].system = $CS_THCC_DisabilityReason (exactly)
* extension[dueTo].valueCodeableConcept.coding[icd10] from $VS_ICD10 (extensible)
* extension[dueTo].valueCodeableConcept.coding[icd10].system = $ICD10 (exactly)
* severity ^short = "ระดับความรุนแรง"
* severity MS
* code MS
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    icf 0..1 MS
* code.coding[icf] from $VS_INT_ICF (extensible)
* code.coding[icf].system = $CS_INT_ICF (exactly)