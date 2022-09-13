Profile: Moph43pRelatedPersonBase
Parent: RelatedPerson
Id: moph43p-relatedperson-base
Title: "MoPH43p RelatedPerson"
Description: "ข้อมูลผู้ญาติของผู้ที่มาใช้บริการ"
* ^url = $SD_RelatedPerson_Base
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains cid 0..1
* identifier[cid] ^short = "เลขที่บัตรประชาชน"
* identifier[cid] ^comment = "เลขประจำตัวประชาชน"
* identifier[cid].type = $CS_TH_IdentifierType#cid
* identifier[cid].system 1..
* identifier[cid].system = $ID_ThaiCid (exactly)
* identifier[cid].value 1..
* identifier[cid].value obeys CID-length
* identifier[cid].value ^example.label = "เลขประจำตัวประชาชน"
* identifier[cid].value ^example.valueString = "1234567890123"
* patient 1.. MS
* patient only Reference($SD_Patient_Base)
* relationship 1.. MS
* name MS
* name ^short = "ชื่อ-นามกสุล"
* name ^slicing.discriminator[0].type = #value
* name ^slicing.discriminator[=].path = "extension('http://hl7.org/fhir/StructureDefinition/language').value"
* name ^slicing.rules = #open
* name contains
  thai 0..* MS and
  english 0..*
* name[thai] ^short = "ชื่อ-นามสกุล ภาษาไทย"
* name[thai].extension ^slicing.discriminator[0].type = #value
* name[thai].extension ^slicing.discriminator[=].path = "url"
* name[thai].extension ^slicing.rules = #open
* name[thai].extension ^min = 0
* name[thai].extension contains
  $EX_HL7_Language named language 1..1 MS
* name[thai].extension[language] ^short = "ภาษา"  
* name[thai].extension[language] ^min = 1
* name[thai].extension[language] ^max = "1"
* name[thai].extension[language].valueCode = #th (exactly)
* name[thai].family MS
* name[thai].family ^short = "ชื่อ ภาษาไทย"
* name[thai].given MS
* name[thai].given ^short = "นามสกุล ภาษาไทย"
* name[thai].prefix MS
* name[thai].prefix ^short = "คำนำหน้า ภาษาไทย"
* name[english] ^short = "ชื่อ-นามสกุล ภาษาอังกฤษ (ถ้ามี)"
* name[english].extension ^slicing.discriminator[0].type = #value
* name[english].extension ^slicing.discriminator[=].path = "url"
* name[english].extension ^slicing.rules = #open
* name[english].extension ^min = 0
* name[english].extension contains
  $EX_HL7_Language named language 1..1 MS
* name[english].extension[language] ^short = "ภาษา"  
* name[english].extension[language] ^min = 1
* name[english].extension[language] ^max = "1"
* name[english].extension[language].valueCode = #en (exactly)
* name[english].family MS
* name[english].family ^short = "ชื่อ ภาษาอังกฤษ"
* name[english].given MS
* name[english].given ^short = "นามสกุล ภาษาอังกฤษ"
* name[english].prefix MS
* name[english].prefix ^short = "คำนำหน้า ภาษาอังกฤษ"
* telecom MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains phone 0..* MS
* telecom[phone] ^short = "โทรศัพท์ติดต่อ"
* telecom[phone] ^comment = "เบอร์โทรศัพท์ที่ใช้ในการติดต่อ"
* telecom[phone].system = #phone (exactly)