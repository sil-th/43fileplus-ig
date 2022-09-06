Profile: Moph43pPractitionerRole
Parent: PractitionerRole
Id: moph43p-practitionerrole
Title: "MoPH43p PractitionerRole"
Description: "ข้อมูลการปฏิบัติงานผู้ให้บริการของสถานพยาบาล"
* ^url = $SD_PractitionerRole
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $EX_TH_PractitionerRoleProviderMovement named move 0..*
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains proId 0..1 MS
* identifier[proId] ^short = "เลขที่ผู้ให้บริการ"
* identifier[proId] ^comment = "เลขที่ผู้ให้บริการ ออกโดยโปรแกรม ไม่ซ้ำกันในสถานพยาบาลเดียวกัน"
  * type = $CS_HL7_IdentifierType#PN
  * system 1..
  * system obeys ProID-uri
  * system ^example.label = "Provider ID namespace"
  * system ^example.valueUri = $ID_LO_Provider
  * value 1..
  * value obeys ProID-length
  * value ^example.label = "เลขที่ผู้ให้บริการ"
  * value ^example.valueString = "123456789012345"
* period MS
* period.start MS
* period.start ^short = "วันที่เริ่มปฏิบัติงาน"
* period.end MS
* period.end ^short = "วันที่สิ้นสุดการปฏิบัติงาน"
* practitioner only Reference($SD_Practitioner)
* practitioner MS
* organization only Reference($SD_Organization_Provider)
* organization MS
* code MS
* code ^short = "รหัสประเภทบุคลากร"

