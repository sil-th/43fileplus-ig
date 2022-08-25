// Alias: $EX_TH_ProviderMove = https://fhir-ig.sil-th.org/43filesplus/Extension/TH-provider-move
// * extension[0]
//   * url = $EX_TH_ProviderMove
//   * extension[0]
//     * url = "movefrom"
//     * valueReference = Reference(Organization/organization-second) "โรงพยาบาลสำรอง"
//   * extension[+]
//     * url = "period"
//     * valuePeriod
//       * start = "2012-04-25"
//       * end = "2015-01-01"
//   * extension[+]
//     * url = "moveto"
//     * valueReference = Reference(Organization/organization-main) "โรงพยาบาลตัวอย่าง"
Extension: EX_TH_ProviderMove
Id: ex-practitionerrole-provider-move
Title: "ข้อมูลการย้ายสถานพยาบาล"
Description: "ข้อมูลการย้ายสถานพยาบาล"
* ^url = $EX_TH_ProviderMove
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . 0..*
* . ^short = "ข้อมูลการย้ายสถานพยาบาล"
* . ^definition = "ข้อมูลการย้ายสถานพยาบาล"
* extension contains
    movefrom 0..1 and
    period 0..1 and
    moveto 0..1
* extension[movefrom] only Extension
* extension[movefrom] ^short = "รหัสสถานพยาบาลที่ย้ายมา"
* extension[movefrom] ^definition = "รหัสสถานพยาบาลที่ย้ายมา"
  * url only uri
  * value[x] 1..
  * value[x] only Reference(Organization)
* extension[period] only Extension
* extension[period] ^short = "วันที่เริ่มและ/หรือสิ้นสุดการปฏิบัติงาน"
* extension[period] ^definition = "วันที่เริ่มและ/หรือสิ้นสุดการปฏิบัติงาน"
  * url only uri
  * value[x] 1..
  * value[x] only Period
* extension[moveto] only Extension
* extension[moveto] ^short = "รหัสสถานพยาบาลที่ย้ายไป"
* extension[moveto] ^definition = "รหัสสถานพยาบาลที่ย้ายไป"
  * url only uri
  * value[x] 1..
  * value[x] only Reference(Organization)