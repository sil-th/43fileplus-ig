Profile: Moph43pPatient
Parent: Patient
Id: moph43p-patient
Title: "MoPH43p Patient"
Description: "ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ"
* ^url = $SD_Patient
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
* extension[nationality] ^short = "สัญชาติของผู้ป่วย"
* extension[nationality] ^definition = "สัญชาติของผู้ป่วย"
* extension[race] ^short = "เชื้อชาติของผู้ป่วย"
* extension[race] ^definition = "เชื้อชาติของผู้ป่วย"
* extension[religion] ^short = "ความเชื่อทางศาสนาของผู้ป่วย"
* extension[religion] ^definition = "ความเชื่อทางศาสนาของผู้ป่วย"
* extension[educationLevel] ^short = "ระดับการศึกษาสูงสุดของผู้ป่วย"
* extension[educationLevel] ^definition = "ระดับการศึกษาสูงสุดของผู้ป่วย"
* extension[personStatus] ^short = "สถานะบุคคลของผู้ป่วย"
* extension[personStatus] ^definition = "สถานะบุคคลของผู้ป่วย"
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
  * system 1..
  * system obeys PID-uri
  * system ^example.label = "PID namespace"
  * system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/PID"
  * value 1..
  * value obeys PID-length
  * value ^example.label = "เลขทะเบียนบุคคล"
  * value ^example.valueString = "123456789012345"
  * period
    * start ^short = "วันที่ย้ายเข้ามาเขตพื้นที่รับผิดชอบ"
    * end ^short = "วันที่จำหน่าย"
* identifier[cid] ^short = "เลขที่บัตรประชาชน"
* identifier[cid] ^comment = "เลขประจำตัวประชาชน"
* identifier[cid] ^patternIdentifier.type = $CS_HL7_IdentifierType#NI
  * system 1..
  * system = $ID_ThaiCid (exactly)
  * value 1..
  * value obeys CID-length
  * value ^example.label = "เลขประจำตัวประชาชน"
  * value ^example.valueString = "1234567890123"
* identifier[pwd] ^short = "เลขประจำตัวคนพิการ"
* identifier[pwd] ^comment = "เลขประจำตัวคนพิการ"
* identifier[pwd] ^patternIdentifier.system = $ID_ThaiDisability
  * system 1..
  * system = $ID_ThaiDisability (exactly)
  * value 1..
  * value obeys PWD-length
  * value ^example.label = "เลขประจำตัวคนพิการ"
  * value ^example.valueString = "1234567890123"
  * period
    * start ^short = "วันขึ้นทะเบียนบัตรผู้พิการ"
    * end ^short = "วันหมดอายุบัตรผู้พิการ"
* identifier[hn] ^short = "เลขที่ผู้ป่วยนอก (HN)"
* identifier[hn] ^comment = "เลขทะเบียนการมารับบริการ กำหนดได้ตั้งแต่ 1-15 หลัก (program generate)"
* identifier[hn] ^patternIdentifier.type = $CS_HL7_IdentifierType#MR
  * system 1..
  * system obeys HN-uri
  * system ^example.label = "HN namespace"
  * system ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/HN"
  * value 1..
  * value obeys HN-length
  * value ^example.label = "เลขที่ผู้ป่วยนอก (HN)"
  * value ^example.valueString = "123456"
* identifier[passportNo] ^short = "เลขที่ passport"
* identifier[passportNo] ^comment = "กรณีที่เป็นประชากรต่างด้าวที่มีเลขที่ passport"
* identifier[passportNo] ^patternIdentifier.type = $CS_HL7_IdentifierType#PPN
  * system 1..
  * system obeys Passport-uri
  * system ^comment = "กำหนดระบบข้อมูลตามรูปแบบ http://hl7.org/fhir/sid/passport-[XXX] โดย [XXX] คือ รหัสประเทศสามตัวอักษร (alpha-3) ตามมาตรฐาน ISO 3166"
  * system ^example.label = "Thai passport namespace"
  * system ^example.valueUri = $ID_ThaiPassport
  * value 1..
  * value ^example.label = "Thai passport number"
  * value ^example.valueString = "AA123456"
* identifier[workPermit] ^short = "เลขที่ใบอนุญาตทำงาน"
* identifier[workPermit] ^comment = "กรณีที่เป็นประชากรต่างด้าวที่มีเลขที่ passport"
* identifier[workPermit] ^patternIdentifier.type = $CS_HL7_IdentifierType#WP
  * system 1..
  * system = $ID_ThaiWorkPermit (exactly)
  * value 1..
  * value obeys WP-length
  * value ^example.label = "เลขที่ใบอนุญาตทำงาน"
  * value ^example.valueString = "1234567890123"
* name MS
* name ^short = "ชื่อ-นามกสุล"
* name ^slicing.discriminator[0].type = #value
* name ^slicing.discriminator[=].path = "extension.value[x]"
* name ^slicing.rules = #open
* name contains
    thai 0..* MS and
    english 0..*
* name[thai] ^short = "ชื่อ-นามสกุล ภาษาไทย"
  * extension ^slicing.discriminator[0].type = #value
  * extension ^slicing.discriminator[=].path = "url"
  * extension ^slicing.rules = #open
  * extension ^min = 0
  * extension contains $EX_HL7_Language named language 1..1 MS
  * extension[language] ^short = "ภาษา"  
  * extension[language] ^min = 1
  * extension[language] ^max = "1"
  * extension[language].valueCode = #th (exactly)
  * family MS
  * family ^short = "ชื่อ ภาษาไทย"
  * given MS
  * given ^short = "นามสกุล ภาษาไทย"
  * prefix MS
  * prefix ^short = "คำนำหน้า ภาษาไทย"
* name[english] ^short = "ชื่อ-นามสกุล ภาษาอังกฤษ (ถ้ามี)"
  * extension ^slicing.discriminator[0].type = #value
  * extension ^slicing.discriminator[=].path = "url"
  * extension ^slicing.rules = #open
  * extension ^min = 0
  * extension contains $EX_HL7_Language named language 1..1 MS
  * extension[language] ^short = "ภาษา"  
  * extension[language] ^min = 1
  * extension[language] ^max = "1"
  * extension[language].valueCode = #en (exactly)
  * family MS
  * family ^short = "ชื่อ ภาษาอังกฤษ"
  * given MS
  * given ^short = "นามสกุล ภาษาอังกฤษ"
  * prefix MS
  * prefix ^short = "คำนำหน้า ภาษาอังกฤษ"
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
  * system = #phone (exactly)
  * use = #home (exactly)
* telecom[mobilePhone] ^short = "เบอร์โทรศัพท์มือถือ ไม่ต้องใส่เครื่องหมายขีด (-)"
  * system = #phone (exactly)
  * use = #mobile (exactly)
* telecom[email] ^short = "E-mail สำหรับติดต่อ"
  * system = #email (exactly)
* gender MS
* gender ^short = "เพศ"
* birthDate MS
* birthDate ^short = "วันเกิด"
* birthDate ^comment = "วันเดือนปีเกิด (ระบุในรูปแบบ YYYY-MM-DD) หากไม่ทราบวัน เดือนที่เกิด แต่ทราบ ค.ศ เกิด ให้กำหนดวันเกิดเป็นวันที่ 1 มกราคมของปี ค.ศ.นั้น ๆ"
* address MS
* address ^slicing.discriminator[0].type = #value
* address ^slicing.discriminator[=].path = "type"
* address ^slicing.rules = #open
  * extension ^slicing.discriminator[0].type = #value
  * extension ^slicing.discriminator[=].path = "url"
  * extension ^slicing.rules = #open
  * extension contains
    $EX_TH_AddressCode named addressCode 0..1 MS and
    $EX_TH_StructureLine named structureLine 0..1 MS and
    $EX_TH_HomeReference named locationRef 0..1 MS and
    $EX_TH_HouseType named houseType 0..1 MS
  * extension[addressCode] ^short = "รหัสที่อยู่ ตามกรมการปกครอง"
  * extension[structureLine] ^short = "รายละเอียดที่อยู่"
  * extension[locationRef] ^short = "อ้่างอิงไปยัง Location resource ที่เก็บข้อมูลบ้าน"
  * extension[houseType] ^short = "ลักษณะของที่อยู่"
  * type MS
// * address contains
//     postal 0..* MS and
//     physical 0..* MS
// * address[postal] ^short = "ที่อยู่ตามทะเบียนบ้าน"
// * address[postal].type = #postal (exactly)
// * address[physical] ^short = "ที่อยู่ที่ติดต่อได้"
// * address[physical].type = #physical (exactly)
* maritalStatus MS
* maritalStatus ^short = "สถานะสมรส"
* generalPractitioner.display MS
* generalPractitioner.display ^short = "ชื่อ แพทย์, เจ้าหน้าที่ ที่รักษาประจำหรือบ่อยๆ"
* managingOrganization MS
* managingOrganization ^short = "สถานพยาบาลปฐมภูมิของบุคคล"

