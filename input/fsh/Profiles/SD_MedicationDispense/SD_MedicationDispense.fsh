Profile: Moph43pMedicationDispense
Parent: MedicationDispense
Id: moph43p-medicationdispense
Title: "MoPH43p MedicationDispense"
Description: "การจ่ายยา"
* ^url = $SD_MedicationDispense
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains $EX_TH_MedicationDispenseDeliveryMode named deliveryMode 0..*
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
* medicationCodeableConcept.coding[local].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/Drug"
* medicationCodeableConcept.coding[local].code 1..
* medicationReference only Reference($SD_Medication)
* medicationReference ^sliceName = "medicationReference"
* subject only Reference($SD_Patient)
* subject MS
* performer MS
* performer.actor only Reference($SD_Practitioner)
* performer.actor MS
* performer.actor ^short = "เภสัชกรที่จ่ายยา"
* authorizingPrescription only Reference($SD_MedicationRequest)
* authorizingPrescription MS
* quantity MS
* daysSupply MS
* whenHandedOver MS
