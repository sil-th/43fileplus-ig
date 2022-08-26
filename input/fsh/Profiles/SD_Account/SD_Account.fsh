Profile: Moph43pAccount
Parent: Account
Id: moph43p-account
Title: "Account (MoPH43p)"
Description: "ข้อมูลทางการเงิน"
* ^url = $SD_Account
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* status MS
* name MS
* subject only Reference($SD_Patient)
* subject MS
* servicePeriod MS
* coverage MS
* coverage.coverage only Reference($SD_Coverage)
* coverage.coverage MS
* coverage.priority MS
* owner only Reference($SD_Organization_Hospital)
* owner MS