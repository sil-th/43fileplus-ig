Profile: Moph43pCoverage
Parent: Coverage
Id: moph43p-coverage
Title: "Coverage (MoPH43p)"
Description: "ข้อมูลสิทธิ"
* ^url = $SD_Coverage
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains cid 0..1
* identifier[cid] ^short = "เลขที่บัตรประชาชน"
* identifier[cid] ^comment = "เลขประจำตัวประชาชน"
* identifier[cid] ^patternIdentifier.type = $CS_HL7_IdentifierType#NI
* identifier[cid].system 1..
* identifier[cid].system = $ID_ThaiCid (exactly)
* identifier[cid].value 1..
* identifier[cid].value obeys CID-length
* identifier[cid].value ^example.label = "เลขประจำตัวประชาชน"
* identifier[cid].value ^example.valueString = "1234567890123"
* type MS
* policyHolder MS
* subscriber MS
* beneficiary only Reference($SD_Patient)
* beneficiary MS
* period MS
* payor MS
