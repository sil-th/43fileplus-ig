Profile: Moph43pMedicationRequest
Parent: MedicationRequest
Id: moph43p-medicationrequest
Title: "MedicationRequest (MoPH43p)"
Description: "การสั่งยา"
* ^url = $SD_MedicationRequest
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_TH_MedicationSource named medicationSource 0..* and
    $EX_TH_MedOutNLEM named npc 0..* and
    $EX_TH_MedApprovedNo named approvedNo 0..*
// * extension[medicationSource] from $VS_THCC_MedicationSource (extensible)
* extension[medicationSource] ^short = "source"
* extension[medicationSource] ^min = 0
// * extension[npc] from $VS_THCC_MedOutNLEM (extensible)
* extension[npc] ^short = "เหตุผลประกอบการสั่งใช้ยานอกบัญชียาหลักแห่งชาติ"
* extension[npc] ^min = 0
* extension[approvedNo] ^short = "หมายเลขอนุมัติ"
* extension[approvedNo] ^min = 0
* status 1.. MS
* intent 1.. MS
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains thcc 1..1 MS
* category[thcc] from $VS_THCC_MedicationCategory (extensible)
* category[thcc].coding.system 1..
* category[thcc].coding.code 1..
* medication[x] 1.. MS
* medication[x] ^slicing.discriminator[0].type = #type
* medication[x] ^slicing.discriminator[=].path = "$this"
* medication[x] ^slicing.rules = #open
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept ^sliceName = "medicationCodeableConcept"
* medicationCodeableConcept.coding ^slicing.discriminator[0].type = #value
* medicationCodeableConcept.coding ^slicing.discriminator[=].path = "system"
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
* medicationCodeableConcept.coding[local].system obeys Drug-uri
* medicationCodeableConcept.coding[local].system ^example.label = "Drug namespace"
* medicationCodeableConcept.coding[local].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/Drug"
* medicationCodeableConcept.coding[local].code 1..
* medicationReference only Reference($SD_Medication)
* medicationReference ^sliceName = "medicationReference"
* subject only Reference($SD_Patient)
* subject MS
* encounter only Reference($SD_Encounter)
* encounter MS
* authoredOn MS
* requester only Reference($SD_Practitioner)
* requester MS
* reasonCode MS
* note MS
* dosageInstruction MS
* dosageInstruction.text MS
