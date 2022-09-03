Profile: Moph43pImmunization
Parent: Immunization
Id: moph43p-immunization
Title: "MoPH43p Immunization"
Description: "การมารับบริการฉีดวัคซีน"
* ^url = $SD_Immunization
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status 1.. MS
* vaccineCode MS
* vaccineCode.coding ^slicing.discriminator[0].type = #value
* vaccineCode.coding ^slicing.discriminator[=].path = "system"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains
    thcc 0..1 MS and
    24-digit 0..1 MS and
    tmt 0..1 MS and
    local 0..1 MS
* vaccineCode.coding[thcc] ^short = "รหัสวัคซีน"
* vaccineCode.coding[thcc].system 1..
* vaccineCode.coding[thcc].system = $CS_THCC_VaccineCode (exactly)
* vaccineCode.coding[thcc].code 1..
* vaccineCode.coding[24-digit] ^short = "รหัสยามาตรฐาน 24 หลัก"
* vaccineCode.coding[24-digit].system 1..
* vaccineCode.coding[24-digit].system = $CS_24Drug (exactly)
* vaccineCode.coding[24-digit].code 1..
* vaccineCode.coding[tmt] ^short = "รหัสยามาตรฐาน TMT"
* vaccineCode.coding[tmt].system 1..
* vaccineCode.coding[tmt].system = $CS_TMT (exactly)
* vaccineCode.coding[tmt].code 1..
* vaccineCode.coding[local] ^short = "รหัสยาของสถานพยาบาล"
* vaccineCode.coding[local].system 1..
* vaccineCode.coding[local].system obeys Local-drug-uri
* vaccineCode.coding[local].system ^example.label = "Drug namespace"
* vaccineCode.coding[local].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/Drug"
* vaccineCode.coding[local].code 1..
* patient only Reference($SD_Patient)
* patient MS
* encounter only Reference($SD_Encounter_Base)
* encounter MS
* occurrence[x] MS
* occurrence[x] only dateTime
* occurrenceDateTime MS
* location only Reference($SD_Location_Department)
* location MS
* manufacturer MS
* lotNumber MS
* expirationDate MS
* performer MS
* performer.actor only Reference($SD_Practitioner)
* performer.actor MS
* note MS
* reaction MS

