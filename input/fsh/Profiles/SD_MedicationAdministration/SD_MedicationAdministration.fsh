Profile: Moph43pMedicationAdministration
Parent: MedicationAdministration
Id: moph43p-medicationadministration
Title: "MoPH43p MedicationAdministration"
Description: "การบริหารยาให้ผู้ป่วย"
* ^url = $SD_MedicationAdministration
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* medication[x] 1.. MS
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #open
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept ^sliceName = "medicationCodeableConcept"
* medicationCodeableConcept.coding ^slicing.discriminator.type = #pattern
* medicationCodeableConcept.coding ^slicing.discriminator.path = "$this"
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
* medicationReference only Reference($SD_Medication)
* medicationReference ^sliceName = "medicationReference"
* subject only Reference($SD_Patient_Base)
* subject MS
* context only Reference($SD_Encounter_Base)
* context MS
* effectivePeriod MS

