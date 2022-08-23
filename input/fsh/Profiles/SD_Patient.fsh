Profile: PatientProfile
Parent: Patient
Id: PatientProfile
Description: "ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ"
* ^url = "https://fhir-ig.sil-th.org/43filesplus/StructureDefinition/patient"
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[=].path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    $EX_HL7_Nationality named nationality 0..* MS and
    $EX_TH_Race named race 0..* MS and
    $EX_HL7_Religion named religion 0..1 MS and
    $EX_TH_EducationLevel named educationLevel 0..* MS and
    $EX_TH_PersonStatus named personStatus 0..* MS
* extension[nationality] ^short = "สัญชาติ"
* extension[nationality] ^definition = "สัญชาติของผู้ป่วย"
* extension[nationality] ^min = 0
* extension[nationality].extension ^slicing.discriminator[0].type = #value
* extension[nationality].extension ^slicing.discriminator[=].path = "url"
* extension[nationality].extension ^slicing.rules = #open
* extension[nationality].extension ^min = 0
// * extension[nationality].extension[code] from VS_THCC_Nationality (extensible)
* extension[nationality].extension[code] ^sliceName = "code"
* extension[nationality].extension[code] ^min = 0
// * extension[race] from VS_THCC_Nationality (extensible)
* extension[race] ^short = "เชื้อชาติ"
* extension[race] ^definition = "เชื้อชาติของผู้ป่วย"
* extension[race] ^min = 0
* extension[religion] ^short = "ศาสนา"
* extension[religion] ^definition = "ความเชื่อทางศาสนาของผู้ป่วย"
// * extension[educationLevel] from VS_THCC_EducationLevel (extensible)
* extension[educationLevel] ^short = "ระดับการศึกษาสูงสุด"
* extension[educationLevel] ^definition = "ระดับการศึกษาสูงสุดของผู้ป่วย"
* extension[educationLevel] ^min = 0
// * extension[personStatus] from VS_THCC_PersonStatus (extensible)
* extension[personStatus] ^short = "สถานะบุคคล"
* extension[personStatus] ^definition = "สถานะบุคคลของผู้ป่วย"
* extension[personStatus] ^min = 0
* identifier MS
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[=].path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    pid 0..1 and
    cid 0..1 and
    pwd 0..1 and
    hn 0..1 and
    passportNo 0..* and
    workPermit 0..*
* identifier[pid] ^short = "ทะเบียนบุคคล"
* identifier[pid] ^comment = "ทะเบียนของบุคคลที่มาขึ้นทะเบียนในสถานบริการนั้นๆ ใช้สำหรับเชื่อมโยงหาตัวบุคคลในแฟ้มอื่นๆ กำหนดได้ตั้งแต่ 1-15 หลัก (program generate)"
* identifier[pid] ^patternIdentifier.type = $CS_HL7_IdentifierType#PN
* identifier[pid].system 1..
* identifier[pid].system obeys PID-uri
* identifier[pid].system ^example.label = "PID namespace"
* identifier[pid].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/PID"
* identifier[pid].value 1..
* identifier[pid].value obeys PID-length
* identifier[pid].value ^example.label = "เลขทะเบียนบุคคล"
* identifier[pid].value ^example.valueString = "123456789012345"
* identifier[pid].period.start ^short = "วันที่ย้ายเข้ามาเขตพื้นที่รับผิดชอบ"
* identifier[pid].period.end ^short = "วันที่จำหน่าย"
* identifier[cid] ^short = "เลขที่บัตรประชาชน"
* identifier[cid] ^comment = "เลขประจำตัวประชาชน"
* identifier[cid] ^patternIdentifier.type = $CS_HL7_IdentifierType#NI
* identifier[cid].system 1..
* identifier[cid].system = $ID_ThaiCid (exactly)
* identifier[cid].value 1..
* identifier[cid].value obeys CID-length
* identifier[cid].value ^example.label = "เลขประจำตัวประชาชน"
* identifier[cid].value ^example.valueString = "1234567890123"
* identifier[pwd] ^short = "เลขประจำตัวคนพิการ"
* identifier[pwd] ^comment = "เลขประจำตัวคนพิการ"
* identifier[pwd] ^patternIdentifier.system = $ID_ThaiDisability
* identifier[pwd].system 1..
* identifier[pwd].system = $ID_ThaiDisability (exactly)
* identifier[pwd].value 1..
* identifier[pwd].value obeys PWD-length
* identifier[pwd].value ^example.label = "เลขประจำตัวคนพิการ"
* identifier[pwd].value ^example.valueString = "1234567890123"
* identifier[pwd].period.start ^short = "วันขึ้นทะเบียนบัตรผู้พิการ"
* identifier[pwd].period.end ^short = "วันหมดอายุบัตรผู้พิการ"
* identifier[hn] ^short = "เลขที่ผู้ป่วยนอก (HN)"
* identifier[hn] ^comment = "เลขทะเบียนการมารับบริการ กำหนดได้ตั้งแต่ 1-15 หลัก (program generate)"
* identifier[hn] ^patternIdentifier.type = $CS_HL7_IdentifierType#MR
* identifier[hn].system 1..
* identifier[hn].system obeys HN-uri
* identifier[hn].system ^example.label = "HN namespace"
* identifier[hn].system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/HN"
* identifier[hn].value 1..
* identifier[hn].value obeys HN-length
* identifier[hn].value ^example.label = "เลขที่ผู้ป่วยนอก (HN)"
* identifier[hn].value ^example.valueString = "123456"
* identifier[passportNo] ^short = "เลขที่ passport"
* identifier[passportNo] ^comment = "กรณีที่เป็นประชากรต่างด้าวที่มีเลขที่ passport"
* identifier[passportNo] ^patternIdentifier.type = $CS_HL7_IdentifierType#PPN
* identifier[passportNo].system 1..
* identifier[passportNo].system obeys Passport-uri
* identifier[passportNo].system ^comment = "กำหนดระบบข้อมูลตามรูปแบบ http://hl7.org/fhir/sid/passport-[XXX] โดย [XXX] คือ รหัสประเทศสามตัวอักษร (alpha-3) ตามมาตรฐาน ISO 3166"
* identifier[passportNo].system ^example.label = "Thai passport namespace"
* identifier[passportNo].system ^example.valueUri = $ID_ThaiPassport
* identifier[passportNo].value 1..
* identifier[passportNo].value ^example.label = "Thai passport number"
* identifier[passportNo].value ^example.valueString = "AA123456"
* identifier[workPermit] ^short = "เลขที่ใบอนุญาตทำงาน"
* identifier[workPermit] ^comment = "กรณีที่เป็นประชากรต่างด้าวที่มีเลขที่ passport"
* identifier[workPermit] ^patternIdentifier.type = $CS_HL7_IdentifierType#WP
* identifier[workPermit].system 1..
* identifier[workPermit].system = $ID_ThaiWorkPermit (exactly)
* identifier[workPermit].value 1..
* identifier[workPermit].value obeys WP-length
* identifier[workPermit].value ^example.label = "เลขที่ใบอนุญาตทำงาน"
* identifier[workPermit].value ^example.valueString = "1234567890123"
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
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[=].path = "system"
* telecom ^slicing.discriminator[+].type = #value
* telecom ^slicing.discriminator[=].path = "use"
* telecom ^slicing.rules = #open
* telecom contains
    phone 0..3 MS and
    mobilePhone 0..3 MS and
    email 0..* MS
* telecom[phone] ^short = "เบอร์โทรศัพท์ติดต่อที่ไม่ใช่มือถือ ไม่ต้องใส่เครื่องหมายขีด (-)"
* telecom[phone].system = #phone (exactly)
* telecom[phone].use = #home (exactly)
* telecom[mobilePhone] ^short = "เบอร์โทรศัพท์มือถือ ไม่ต้องใส่เครื่องหมายขีด (-)"
* telecom[mobilePhone].system = #phone (exactly)
* telecom[mobilePhone].use = #mobile (exactly)
* telecom[email] ^short = "E-mail สำหรับติดต่อ"
* telecom[email].system = #email (exactly)
* gender MS
* gender ^short = "เพศ"
* birthDate MS
* birthDate ^short = "วันเกิด"
* birthDate ^comment = "วันเดือนปีเกิด (ระบุในรูปแบบ YYYY-MM-DD) หากไม่ทราบวัน เดือนที่เกิด แต่ทราบ ค.ศ เกิด ให้กำหนดวันเกิดเป็นวันที่ 1 มกราคมของปี ค.ศ.นั้นๆ"
* address MS
* address ^slicing.discriminator[0].type = #value
* address ^slicing.discriminator[=].path = "type"
* address ^slicing.rules = #open
* address.extension ^slicing.discriminator[0].type = #value
* address.extension ^slicing.discriminator[=].path = "url"
* address.extension ^slicing.rules = #open
* address.extension contains
    $EX_TH_AddressCode named addressCode 0..1 MS and
    $EX_TH_StructureLine named structureLine 0..1 MS
* address.extension[addressCode] ^short = "รหัสบ้านที่พักอาศัย"
* address.extension[structureLine] ^short = "โครงสร้างที่อยู่"
* address contains
    postal 0..* MS and
    physical 0..* MS
* address[postal] ^short = "ที่อยู่ตามทะเบียนบ้าน"
* address[postal].type = #postal (exactly)
* address[physical] ^short = "ที่อยู่ที่ติดต่อได้"
* address[physical].type = #physical (exactly)
* maritalStatus MS
* maritalStatus ^short = "สถานะสมรส"
* generalPractitioner.display MS
* generalPractitioner.display ^short = "ชื่อ แพทย์, เจ้าหน้าที่ ที่รักษาประจำหรือบ่อยๆ"
* managingOrganization MS
* managingOrganization ^short = "สถานพยาบาล"

//Constraint
Invariant: PID-uri
Description: "PID identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/PID, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/PID)$')"

Invariant: PID-length
Description: "PID number shall be 1 to 15 digit number"
Severity: #error
Expression: "value.matches('^([0-9]{1,15})$')"

Invariant: CID-length
Description: "CID number shall be 13-digit number"
Severity: #error
Expression: "value.matches('^([0-9]{13})$')"

Invariant: PWD-length
Description: "PWD number shall be 13-digit number"
Severity: #error
Expression: "value.matches('^([0-9]{13})$')"

Invariant: HN-uri
Description: "HN identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/HN, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/HN)$')"

Invariant: HN-length
Description: "PID number shall be 1 to 15 digit number"
Severity: #error
Expression: "value.matches('^([0-9]{1,15})$')"

Invariant: Passport-uri
Description: "Passport identifier shall be http://hl7.org/fhir/sid/passport-[XXX], where [XXX] is a 3-letter country code defined by ISO 3166."
Severity: #error
Expression: "value.matches('^(http://hl7.org/fhir/sid/passport-[A-Z]{3})$')"

Invariant: WP-length
Description: "Work Permit number shall be 13-digit number"
Severity: #error
Expression: "value.matches('^([0-9]{13})$')"