Profile: Moph43pPractitioner
Parent: Practitioner
Id: moph43p-practitioner
Title: "MoPH43p Practitioner"
Description: "ข้อมูลผู้ให้บริการของสถานพยาบาล"
* ^url = $SD_Practitioner
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
* name MS
* name ^short = "ชื่อ-นามกสุล"
* name ^slicing.discriminator[0].type = #value
* name ^slicing.discriminator[=].path = "extension.value[x]"
* name ^slicing.rules = #open
* name contains
  thai 0..* MS and
  english 0..*
* name[thai] ^short = "ชื่อ-นามสกุล ภาษาไทย"
* name[thai].extension ^slicing.discriminator[0].type = #value
* name[thai].extension ^slicing.discriminator[=].path = "url"
* name[thai].extension ^slicing.rules = #open
// * name[thai].extension ^min = 0
* name[thai].extension contains
  $EX_HL7_Language named language 1..1 MS
* name[thai].extension[language] ^short = "ภาษา"  
// * name[thai].extension[language] ^min = 1
// * name[thai].extension[language] ^max = "1"
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
// * name[english].extension[language] ^min = 1
// * name[english].extension[language] ^max = "1"
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
* telecom contains
    phone 0..* MS and
    email 0..* MS
* telecom[phone] ^short = "โทรศัพท์ติดต่อ"
* telecom[phone] ^comment = "เบอร์โทรศัพท์ที่ใช้ในการติดต่อ (ที่ทำงาน)"
* telecom[phone].system = #phone (exactly)
* telecom[email] ^short = "E-mail ติดต่อ"
* telecom[email] ^comment = "E-mail ที่ใช้ในการติดต่อ (ที่ทำงาน)"
* telecom[email].system = #email (exactly)
* gender MS
* gender ^short = "เพศ"
* birthDate MS
* birthDate ^short = "วันเกิด"
* qualification MS
* qualification.identifier MS
* qualification.identifier ^short = "หมายเลขทะเบียนวิชาชีพ"
* qualification.issuer.extension ^slicing.discriminator.type = #value
* qualification.issuer.extension ^slicing.discriminator.path = "url"
* qualification.issuer.extension ^slicing.rules = #open
// * qualification.issuer.extension ^min = 0
* qualification.issuer.extension contains $EX_TH_PractitionerQualificationIssuer named qualificationIssuer 0..1 MS
* qualification.issuer.extension[qualificationIssuer] ^sliceName = "qualificationIssuer"
* qualification.issuer.extension[qualificationIssuer] ^short = "รหัสสภาวิชาชีพ"

