Profile: Moph43pClaimAccident
Parent: Claim
Id: moph43p-claim-accident
Title: "Claim - Accident (MoPH43p)"
Description: "ค่าใช้จ่ายการรับบริการแผนกฉุกเฉิน"
* ^url = $SD_Claim_Accident
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* patient only Reference($SD_Patient)
* patient MS
* created MS
* provider only Reference($SD_Organization_Provider)
* provider MS
* priority MS
* supportingInfo MS
* insurance MS
* insurance.coverage only Reference($SD_Coverage)
* insurance.coverage MS