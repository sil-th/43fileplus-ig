// Extension: citizenship
// Id: patient-citizenship
// Title: "citizenship"
// Description: "The patient's legal status as citizen of a country."
// * ^version = "4.3.0"
// * ^status = #draft
// * ^experimental = false
// * ^date = "2022-08-22T07:06:13+11:00"
// * ^publisher = "SIL-TH"
// * ^context.type = #element
// * ^context.expression = "Patient"
// * . 0..*
// * . ^short = "TEMP"
// * . ^definition = "TEMP"
// * extension contains
//     code 0..1 and
//     period 0..1
// * extension[code] only Extension
// * extension[code] ^short = "Nation code of citizenship"
// * extension[code] ^definition = "Nation code representing the citizenship of patient."
// * extension[code].url only uri
// * extension[code].value[x] 1..
// * extension[code].value[x] only CodeableConcept
// * extension[period] only Extension
// * extension[period] ^short = "Time period of citizenship"
// * extension[period] ^definition = "Period when citizenship was effective."
// * extension[period].url only uri
// * extension[period].value[x] 1..
// * extension[period].value[x] only Period



// Alias: $v3-ReligiousAffiliation = http://terminology.hl7.org/ValueSet/v3-ReligiousAffiliation

// Extension: religion
// Id: patient-religion
// Title: "religion"
// Description: "The patient's professed religious affiliations."
// * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * ^extension[=].valueCode = #pa
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
// * ^extension[=].valueInteger = 1
// * ^version = "4.3.0"
// * ^status = #draft
// * ^experimental = false
// * ^date = "2021-01-17T07:06:13+11:00"
// * ^publisher = "HL7"
// * ^context.type = #element
// * ^context.expression = "Patient"
// * . 0..*
// * . ^short = "The patient's professed religious affiliations"
// * . ^definition = "The patient's professed religious affiliations."
// * value[x] 1..
// * value[x] only CodeableConcept
// * value[x] from $v3-ReligiousAffiliation (extensible)
// * value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
// * value[x] ^binding.extension.valueString = "Religion"


// Extension: birthTime
// Id: patient-birthTime
// Title: "Birth Time"
// Description: "The time of day that the Patient was born. This includes the date to ensure that the timezone information can be communicated effectively."
// * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * ^extension[=].valueCode = #pa
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
// * ^extension[=].valueInteger = 1
// * ^version = "4.3.0"
// * ^status = #draft
// * ^experimental = false
// * ^date = "2021-01-17T07:06:13+11:00"
// * ^publisher = "HL7"
// * ^context.type = #element
// * ^context.expression = "Patient.birthDate"
// * . 0..1
// * . ^short = "Time of day of birth"
// * . ^definition = "The time of day that the Patient was born. This includes the date to ensure that the timezone information can be communicated effectively."
// * value[x] 1..
// * value[x] only dateTime

// Template
// Extension: EX_TH_DeathLocType
// Id: ex-
// Title: "TEMP"
// Description: "TEMP"
// * ^url = $EX_TH_DeathLocType
// * ^version = "4.3.0"
// * ^status = #draft
// * ^experimental = false
// * ^date = "2022-08-23T07:06:13+11:00"
// * ^publisher = "SIL-TH"
// * ^context.type = #element
// * ^context.expression = "Encounter"
// * . 0..*
// * . ^short = "TEMP"
// * . ^definition = "TEMP"
// * value[x] 1..
// * value[x] only CodeableConcept
// * value[x] from $VS (extensible)