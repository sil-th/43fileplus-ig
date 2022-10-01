Profile: MophPcMedicationDispenseContraceptive
Parent: $SD_MedicationDispense_Base
Id: mophpc-medicationdispense-contraceptive
Title: "MoPH-PC MedicationDispense: Contraceptive"
Description: "การจ่ายยาคุมกำเนิด"
* ^url = $SD_MedicationDispense_Contraceptive
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    thccCon 0..1 MS
* medicationCodeableConcept.coding[thccCon] ^short = "รหัสวิธีการคุมกำเนิด"
* medicationCodeableConcept.coding[thccCon] from $VS_THCC_ContraceptiveMethod (extensible)
* medicationCodeableConcept.coding[thccCon].system 1..
* medicationCodeableConcept.coding[thccCon].system = $CS_THCC_ContraceptiveMethod (exactly)
* medicationCodeableConcept.coding[thccCon].code 1..
