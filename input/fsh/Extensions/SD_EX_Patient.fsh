Extension: ExtensionPatientRace
Id: extension-patient-race
Title: "เชื้อชาติของบุคคล"
Description: "เชื้อชาติของบุคคล"
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "เชื้อชาติของบุคคล"
* . ^definition = "เชื้อชาติของบุคคล"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_Nationality (extensible)

