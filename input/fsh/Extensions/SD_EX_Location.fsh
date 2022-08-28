// Alias: $EX_TH_LocationHouseOwner = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-house-owner
// * extension[+]
//   * url = $EX_TH_LocationHouseOwner
//   * valueReference = Reference(Patient/patient-patient1)
Extension: EX_TH_LocationHouseOwner
Id: ex-location-house-owner
Title: "Ext Location: House Owner"
Description: "รหัส เจ้าบ้าน"
* ^url = $EX_TH_LocationHouseOwner
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Location"
* . 0..*
* . ^short = "รหัส เจ้าบ้าน"
* . ^definition = "รหัส เจ้าบ้าน"
* value[x] 1..
* value[x] only Reference(Patient or RelatedPerson or Person)




// Alias: $EX_TH_ManagingPractitioner = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-managing-practitioner
// * extension[+]
//   * url = $EX_TH_ManagingPractitioner
//   * valueReference = Reference(Practitioner/practitioner-volunteer1) "นาง ใจดี ชอบช่วย"
Extension: EX_TH_LocationResponsibleVolunteer
Id: ex-location-responsible-volunteer
Title: "Ext Location: Responsible Volunteer"
Description: "รหัส อสม."
* ^url = $EX_TH_LocationResponsibleVolunteer
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Location"
* . 0..*
* . ^short = "รหัส อสม."
* . ^definition = "รหัส อสม."
* value[x] 1..
* value[x] only Reference(Practitioner)




// Alias: $EX_TH_LocationHouseholdCount = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-householde-num
// * extension[+]
//   * url = $EX_TH_LocationHouseholdCount
//   * valueInteger = 1
Extension: EX_TH_LocationHouseholdCount
Id: ex-location-household-count
Title: "Ext Location: Household Count"
Description: "จำนวนครอบครัว"
* ^url = $EX_TH_LocationHouseholdCount
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Location"
* . 0..*
* . ^short = "จำนวนครอบครัว"
* . ^definition = "จำนวนครอบครัว"
* value[x] 1..
* value[x] only integer




// Alias: $EX_TH_LocationInMunicipality = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-in-municipality
// * extension[+]
//   * url = $EX_TH_LocationInMunicipality
//   * valueCodeableConcept = $CS_THCC_InMunicipality#1 "ในเขตเทศบาล"
Extension: EX_TH_LocationInMunicipality
Id: ex-location-in-municipality
Title: "Ext Location: In Municipality"
Description: "ที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* ^url = $EX_TH_LocationInMunicipality
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Location"
* . 0..*
* . ^short = "ที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* . ^definition = "ที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_InMunicipality (extensible)




// Alias: $EX_TH_LocationVillageArea = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-village-area
// * extension[0]
//   * url = $EX_TH_LocationVillageArea
//   * valueCodeableConcept = $CS_PCU_VillageArea#1 "เทศบาล"
Extension: EX_TH_LocationVillageArea
Id: ex-location-village-area
Title: "Ext Location: Village Area"
Description: "เขตที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* ^url = $EX_TH_LocationVillageArea
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Location"
* . 0..*
* . ^short = "เขตที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* . ^definition = "เขตที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_PCU_VillageArea (extensible)




// Alias: $EX_TH_LocationVillageMainHospital = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-village-main-hospital
// * extension[+]
//   * url = $EX_TH_LocationVillageMainHospital
//   * valueReference = Reference(Organization/organization-main)
Extension: EX_TH_LocationVillageMainHospital
Id: ex-location-village-main-hospital
Title: "Ext Location: Village Main Hospital"
Description: "โรงพยาบาลหลัก"
* ^url = $EX_TH_LocationVillageMainHospital
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Location"
* . 0..*
* . ^short = "โรงพยาบาลหลัก"
* . ^definition = "โรงพยาบาลหลัก"
* value[x] 1..
* value[x] only Reference(Organization)




// Alias: $EX_TH_LocationVillageUnlistDate = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-village-unlist-date
// * extension[+]
//   * url = $EX_TH_LocationVillageUnlistDate
//   * valueDate = "2022-07-01"
Extension: EX_TH_LocationVillageUnlistDate
Id: ex-location-village-unlist-date
Title: "Ext Location: Village Unlist Date"
Description: "วันที่แยกชุมชนออกนอกเขต"
* ^url = $EX_TH_LocationVillageUnlistDate
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Location"
* . 0..*
* . ^short = "วันที่แยกชุมชนออกนอกเขต"
* . ^definition = "วันที่แยกชุมชนออกนอกเขต"
* value[x] 1..
* value[x] only date




