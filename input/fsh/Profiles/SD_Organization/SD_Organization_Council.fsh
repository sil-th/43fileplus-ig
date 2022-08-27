Profile: Moph43pOrganizationCouncil
Parent: Organization
Id: moph43p-organization-council
Title: "Organization - Council (MoPH43p)"
Description: "ข้อมูลสภาวิชาชีพ"
* ^url = $SD_Organization_Council
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* type MS
* type ^slicing.discriminator[0].type = #value
* type ^slicing.discriminator[=].path = "coding.system"
* type ^slicing.discriminator[+].type = #value
* type ^slicing.discriminator[=].path = "coding.code"
* type ^slicing.rules = #open
* type contains council 0..1 MS
* type[council].coding.system = $CS_HL7_IdentifierType (exactly)
* type[council].coding.code = #XX (exactly)
* name MS
* name ^short = "ชื่อสภาวิชาชีพ"