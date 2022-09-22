// Alias: $EX_TH_LocationHouseOwner = https://fhir-ig.sil-th.org/mophpc/Extension/TH-house-owner
// * extension[+]
//   * url = $EX_TH_LocationHouseOwner (exactly)
//   * valueReference = Reference(Patient/patient-patient1)
Extension: EX_TH_LocationHouseOwner
Id: ex-location-house-owner
Title: "Location: House Owner"
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
* url = $EX_TH_LocationHouseOwner (exactly)
* extension contains
    pid 0..1 and
    hcode 0..1
* extension[pid] only Extension
* extension[pid] ^short = "รหัส PID ของเจ้าบ้าน"
* extension[pid] ^definition = "รหัส PID ของเจ้าบ้าน"
  * url = "pid" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[hcode] only Extension
* extension[hcode] ^short = "รหัส HCODE ของเจ้าบ้าน"
* extension[hcode] ^definition = "รหัส HCODE ของเจ้าบ้าน"
  * url = "hcode" (exactly)
  * value[x] 1..
  * value[x] only string





// Alias: $EX_TH_ManagingPractitioner = https://fhir-ig.sil-th.org/mophpc/Extension/TH-managing-practitioner
// * extension[+]
//   * url = $EX_TH_ManagingPractitioner (exactly)
//   * valueReference = Reference(Practitioner/practitioner-volunteer1) "นาง ใจดี ชอบช่วย"
Extension: EX_TH_LocationResponsibleVolunteer
Id: ex-location-responsible-volunteer
Title: "Location: Responsible Volunteer"
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
* url = $EX_TH_LocationResponsibleVolunteer (exactly)
* extension contains
    pid 0..1 and
    hcode 0..1
* extension[pid] only Extension
* extension[pid] ^short = "รหัส PID ของเจ้าบ้าน"
* extension[pid] ^definition = "รหัส PID ของเจ้าบ้าน"
  * url = "pid" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[hcode] only Extension
* extension[hcode] ^short = "รหัส HCODE ของเจ้าบ้าน"
* extension[hcode] ^definition = "รหัส HCODE ของเจ้าบ้าน"
  * url = "hcode" (exactly)
  * value[x] 1..
  * value[x] only string





// Alias: $EX_TH_LocationHouseholdCount = https://fhir-ig.sil-th.org/mophpc/Extension/TH-householde-num
// * extension[+]
//   * url = $EX_TH_LocationHouseholdCount (exactly)
//   * valueInteger = 1
Extension: EX_TH_LocationHouseholdCount
Id: ex-location-household-count
Title: "Location: Household Count"
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
* url = $EX_TH_LocationHouseholdCount (exactly)
* value[x] 1..
* value[x] only integer




// Alias: $EX_TH_LocationInMunicipality = https://fhir-ig.sil-th.org/mophpc/Extension/TH-in-municipality
// * extension[+]
//   * url = $EX_TH_LocationInMunicipality (exactly)
//   * valueCodeableConcept = $CS_THCC_InMunicipality#1 "ในเขตเทศบาล"
Extension: EX_TH_LocationInMunicipality
Id: ex-location-in-municipality
Title: "Location: In Municipality"
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
* url = $EX_TH_LocationInMunicipality (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_InMunicipality (extensible)




// Alias: $EX_TH_LocationVillageArea = https://fhir-ig.sil-th.org/mophpc/Extension/TH-village-area
// * extension[0]
//   * url = $EX_TH_LocationVillageArea (exactly)
//   * valueCodeableConcept = $CS_PCU_VillageArea#1 "เทศบาล"
Extension: EX_TH_LocationVillageArea
Id: ex-location-village-area
Title: "Location: Village Area"
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
* url = $EX_TH_LocationVillageArea (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_PCU_VillageArea (extensible)




// Alias: $EX_TH_LocationVillageMainHospital = https://fhir-ig.sil-th.org/mophpc/Extension/TH-village-main-hospital
// * extension[+]
//   * url = $EX_TH_LocationVillageMainHospital (exactly)
//   * valueReference = Reference(Organization/organization-main)
Extension: EX_TH_LocationVillageMainHospital
Id: ex-location-village-main-hospital
Title: "Location: Village Main Hospital"
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
* url = $EX_TH_LocationVillageMainHospital (exactly)
* value[x] 1..
* value[x] only Reference(Organization)




// Alias: $EX_TH_LocationVillageUnlistDate = https://fhir-ig.sil-th.org/mophpc/Extension/TH-village-unlist-date
// * extension[+]
//   * url = $EX_TH_LocationVillageUnlistDate (exactly)
//   * valueDate = "2022-07-01"
Extension: EX_TH_LocationVillageUnlistDate
Id: ex-location-village-unlist-date
Title: "Location: Village Unlist Date"
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
* url = $EX_TH_LocationVillageUnlistDate (exactly)
* value[x] 1..
* value[x] only date




