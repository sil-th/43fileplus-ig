Profile: Moph43pOrganizationProvider
Parent: Organization
Id: moph43p-organization-provider
Title: "Organization - Provider (MoPH43p)"
Description: "ข้อมูลสถานพยาบาล"
* ^url = $SD_Organization_Provider
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains hcode 0..1
* identifier[hcode] ^short = "รหัสสถานพยาบาล 5 หลัก"
* identifier[hcode].system 1..
* identifier[hcode].system = "https://terms.sil-th.org/hcode/5" (exactly)
* identifier[hcode].value 1..
* identifier[hcode].value obeys hcode-length
* name MS
* name ^short = "ชื่อสถานพยาบาล"
* partOf only Reference($SD_Organization_Provider)
* partOf MS

