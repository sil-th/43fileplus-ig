Profile: Moph43pOrganizationFundProfile
Parent: Organization
Id: moph43p-organization-fund
Title: "Organization - Fund (MoPH43p)"
Description: "ข้อมูลสำนักงานประกันสุขภาพ"
* ^url = $SD_Organization_Fund
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* type MS
* type ^slicing.discriminator[0].type = #value
* type ^slicing.discriminator[=].path = "coding.system"
* type ^slicing.discriminator[+].type = #value
* type ^slicing.discriminator[=].path = "coding.code"
* type ^slicing.rules = #open
* type contains payer 0..*
* type[payer].coding.system = $CS_HL7_IdentifierType (exactly)
* type[payer].coding.code = #pay (exactly)
* name MS
* name ^short = "ชื่อสำนักงานประกันสุขภาพ"