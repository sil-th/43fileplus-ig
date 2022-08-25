// Alias: $EX_TH_HouseOwner = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-house-owner
// * extension[+]
//   * url = $EX_TH_HouseOwner
//   * valueReference = Reference(Patient/patient-patient1)
Extension: EX_TH_HouseOwner
Id: ex-location-house-owner
Title: "รหัส เจ้าบ้าน"
Description: "รหัส เจ้าบ้าน"
* ^url = $EX_TH_HouseOwner
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
Extension: EX_TH_ManagingVolunteer
Id: ex-location-managing-volunteer
Title: "รหัส อสม."
Description: "รหัส อสม."
* ^url = $EX_TH_ManagingVolunteer
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




// Alias: $EX_TH_HouseholdNum = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-householde-num
// * extension[+]
//   * url = $EX_TH_HouseholdNum
//   * valueInteger = 1
Extension: EX_TH_HouseholdNum
Id: ex-location-household-num
Title: "จำนวนครอบครัว"
Description: "จำนวนครอบครัว"
* ^url = $EX_TH_HouseholdNum
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




// Alias: $EX_TH_InMunicipality = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-in-municipality
// * extension[+]
//   * url = $EX_TH_InMunicipality
//   * valueCodeableConcept = $CS_THCC_InMunicipality#1 "ในเขตเทศบาล"
Extension: EX_TH_InMunicipality
Id: ex-location-in-municipality
Title: "ที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
Description: "ที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* ^url = $EX_TH_InMunicipality
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




// Alias: $EX_TH_VillageArea = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-village-area
// * extension[0]
//   * url = $EX_TH_VillageArea
//   * valueCodeableConcept = $CS_THCC_VillageArea#1 "เทศบาล"
Extension: EX_TH_VillageArea
Id: ex-location-village-area
Title: "เขตที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
Description: "เขตที่ตั้ง อยู่ในหรือนอกเขตเทศบาล"
* ^url = $EX_TH_VillageArea
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
* value[x] from $VS_THCC_VillageArea (extensible)




// Alias: $EX_TH_VillageMainHospital = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-village-main-hospital
// * extension[+]
//   * url = $EX_TH_VillageMainHospital
//   * valueReference = Reference(Organization/organization-main)
Extension: EX_TH_VillageMainHospital
Id: ex-location-village-main-hospital
Title: "โรงพยาบาลหลัก"
Description: "โรงพยาบาลหลัก"
* ^url = $EX_TH_VillageMainHospital
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




// Alias: $EX_TH_VillageUnlistDate = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-village-unlist-date
// * extension[+]
//   * url = $EX_TH_VillageUnlistDate
//   * valueDate = "2022-07-01"
Extension: EX_TH_VillageUnlistDate
Id: ex-location-village-unlist-date
Title: "วันที่แยกชุมชนออกนอกเขต"
Description: "วันที่แยกชุมชนออกนอกเขต"
* ^url = $EX_TH_VillageUnlistDate
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




