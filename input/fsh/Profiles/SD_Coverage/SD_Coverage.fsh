Profile: MophPcCoverageBase
Parent: Coverage
Id: mophpc-coverage-base
Title: "MoPH-PC Coverage"
Description: "ข้อมูลสิทธิ"
* ^url = $SD_Coverage_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_CoverageContractedProvider named contractedProvider 0..* MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains cid 0..1
* identifier[cid] ^short = "เลขประจำตัวประชาชน"
* identifier[cid].type = $CS_TH_IdentifierType#cid
* identifier[cid].system 1..
* identifier[cid].system = $ID_ThaiCid (exactly)
* identifier[cid].value 1..
* identifier[cid].value obeys CID-length
* identifier[cid].value ^example.label = "เลขประจำตัวประชาชน"
* identifier[cid].value ^example.valueString = "1234567890123"
* type MS
* policyHolder MS
* subscriber MS
* beneficiary only Reference($SD_Patient_Base)
* beneficiary MS
* period MS
* payor MS
