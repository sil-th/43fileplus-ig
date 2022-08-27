Profile: Moph43pPractitionerRole
Parent: PractitionerRole
Id: moph43p-practitionerrole
Title: "PractitionerRole (MoPH43p)"
Description: "ข้อมูลการปฏิบัติงานผู้ให้บริการของสถานพยาบาล"
* ^url = $SD_PractitionerRole
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
  $EX_TH_ProviderMove named move 0..*
* extension[move] ^short = "รหัสสถานพยาบาลที่ย้าย"
* extension[move] ^min = 0
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains pid 0..1 MS
* identifier[pid] ^short = "ทะเบียนบุคคล"
* identifier[pid] ^patternIdentifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PN
* identifier[pid].system 1..
* identifier[pid].system obeys PID-uri
* identifier[pid].system ^example.label = "PID namespace"
* identifier[pid].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/PID"
* identifier[pid].value 1..
* identifier[pid].value obeys PID-length
* identifier[pid].value ^example.label = "เลขทะเบียนบุคคล"
* identifier[pid].value ^example.valueString = "123456789012345"
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

