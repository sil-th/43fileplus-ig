Profile: Moph43pMedicationRequestBase
Parent: MedicationRequest
Id: moph43p-medicationrequest-base
Title: "MoPH43p MedicationRequest"
Description: "การสั่งยา"
* ^url = $SD_MedicationRequest_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_MedicationRequestSource named medicationSource 0..* and
    $EX_TH_MedicationRequestNedCriteria named nedCriteria 0..* and
    $EX_TH_MedicationRequestApprovedNo named approvedNo 0..*
* status 1.. MS
* intent 1.. MS
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains thcc 1..1 MS
* category[thcc] from $VS_eClaim_MedicationCategory (extensible)
* category[thcc].coding.system 1..
* category[thcc].coding.code 1..
* medication[x] 1.. MS
* medicationCodeableConcept MS
* medicationCodeableConcept.coding ^slicing.discriminator[0].type = #pattern
* medicationCodeableConcept.coding ^slicing.discriminator[=].path = "$this"
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
* medicationCodeableConcept.coding[local].system ^example.valueUri = $ID_LO_Drug
* medicationCodeableConcept.coding[local].code 1..
* medicationReference only Reference($SD_Medication_Base)
* medicationReference ^sliceName = "medicationReference"
* subject only Reference($SD_Patient_Base)
* subject MS
* encounter only Reference($SD_Encounter_Base)
* encounter MS
* authoredOn MS
* requester only Reference($SD_Practitioner_Base)
* requester MS
* reasonCode MS
* note MS
* dosageInstruction MS
  * extension contains $EX_TH_MedicationRequestDosageCode named dosageCode 0..1 
* dosageInstruction.text MS
