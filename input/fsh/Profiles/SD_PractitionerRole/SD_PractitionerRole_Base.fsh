Profile: Moph43pPractitionerRoleBase
Parent: PractitionerRole
Id: moph43p-practitionerrole-base
Title: "MoPH43p PractitionerRole"
Description: "ข้อมูลการปฏิบัติงานผู้ให้บริการของสถานพยาบาล"
* ^url = $SD_PractitionerRole_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
  $EX_TH_PractitionerRoleProviderMovement named move 0..*
* identifier MS
* period MS
* period.start MS
* period.start ^short = "วันที่เริ่มปฏิบัติงาน"
* period.end MS
* period.end ^short = "วันที่สิ้นสุดการปฏิบัติงาน"
* practitioner only Reference($SD_Practitioner_Base)
* practitioner 1.. MS
* organization only Reference($SD_Organization_Provider)
* organization 1.. MS
* code MS
* code ^short = "รหัสประเภทบุคลากร"

