Profile: Moph43pMedicationStatementBase
Parent: MedicationStatement
Id: moph43p-medicationstatement-base
Title: "MoPH43p MedicationStatement"
Description: "ข้อมูลประวัติยาผู้ป่วย"
* ^url = $SD_MedicationStatement_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension contains
    $EX_TH_MedicationRequestSource named medicationSource 0..* and
    $EX_TH_MedicationRequestNedCriteria named npc 0..* and
    $EX_TH_MedicationRequestApprovedNo named approvedNo 0..*
* extension[medicationSource] ^short = "source"
* extension[npc] ^short = "เหตุผลประกอบการสั่งใช้ยานอกบัญชียาหลักแห่งชาติ"
* extension[approvedNo] ^short = "หมายเลขอนุมัติ"
* status 1.. MS
* category MS
* category.coding ^slicing.discriminator[0].type = #value
* category.coding ^slicing.discriminator[=].path = "system"
* category.coding ^slicing.rules = #open
* category.coding contains
    thcc 1..1 MS
* category.coding[thcc] from $VS_eClaim_MedicationCategory (extensible)
* category.coding[thcc].system 1..
* category.coding[thcc].code 1..
* medication[x] 1.. MS
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #open
* medicationCodeableConcept 0..1 MS
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    24-digit 0..1 MS and
    tmt 0..1 MS and
    local 0..1 MS
* medicationCodeableConcept.coding[24-digit] ^short = "รหัสยามาตรฐาน 24 หลัก"
* medicationCodeableConcept.coding[24-digit].system 1..
* medicationCodeableConcept.coding[24-digit].system = $CS_24Drug (exactly)
* medicationCodeableConcept.coding[24-digit].code 1..
* medicationCodeableConcept.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* medicationCodeableConcept.coding[tmt].system 1..
* medicationCodeableConcept.coding[tmt].system = $CS_TMT (exactly)
* medicationCodeableConcept.coding[tmt].code 1..
* medicationCodeableConcept.coding[local] ^short = "รหัสยาของสถานพยาบาล"
* medicationCodeableConcept.coding[local].system 1..
* medicationCodeableConcept.coding[local].system = $CS_TH_LocalDrugCode (exactly)
* medicationCodeableConcept.coding[local].code 1..
* medicationReference 0..1 MS
* medicationReference only Reference($SD_Medication_Base)
* subject only Reference($SD_Patient_Base)
* subject MS
* effective[x] MS
* effective[x] only Period
* effectivePeriod ^sliceName = "effectivePeriod"
* effectivePeriod MS
* dateAsserted MS
* informationSource only Reference($SD_Patient_Base or $SD_Organization_Provider)
* informationSource MS
* dosage MS
* dosage.text MS
