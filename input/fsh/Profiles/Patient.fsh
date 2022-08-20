Profile: PatientProfile
Parent: Patient
Id: PatientProfile
Description: "ข้อมูลทั่วไปของประชาชนในเขตรับผิดชอบ และผู้ที่มาใช้บริการ"
* ^url = "https://fhir-ig.sil-th.org/43filesplus/StructureDefinition/patient"
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* identifier MS
  * ^slicing.discriminator[0].type = #pattern
  * ^slicing.discriminator[=].path = "$this"
  * ^slicing.rules = #open
* identifier contains
    pid 0..1 and
    cid 0..1 and
    pwd 0..1 and
    hn 0..1 and
    passportNo 0..* and
    workPermit 0..*
* identifier[pid] ^short = "ทะเบียนบุคคล"
  * ^comment = "ทะเบียนของบุคคลที่มาขึ้นทะเบียนในสถานบริการนั้นๆ ใช้สำหรับเชื่อมโยงหาตัวบุคคลในแฟ้มอื่นๆ กำหนดได้ตั้งแต่ 1-15 หลัก (program generate)"
  * ^patternIdentifier.type = $CS_HL7_IdentifierType#PN
  * system 1..
    * obeys PID-uri
    * ^example.label = "PID namespace"
    * ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/PID"
  * value 1..
    * obeys PID-length
    * ^example.label = "เลขทะเบียนบุคคล"
    * ^example.valueString = "123456789012345"
  * period.start ^short = "วันที่ย้ายเข้ามาเขตพื้นที่รับผิดชอบ"
  * period.end ^short = "วันที่จำหน่าย"
* identifier[cid] ^short = "เลขที่บัตรประชาชน"
  * ^comment = "เลขประจำตัวประชาชน"
  * ^patternIdentifier.type = $CS_HL7_IdentifierType#NI
  * system 1..
  * system = "https://terms.sil-th.org/id/th-cid" (exactly)
  * value 1..
    * obeys CID-length
    * ^example.label = "เลขประจำตัวประชาชน"
    * ^example.valueString = "1234567890123"
* identifier[pwd] ^short = "เลขประจำตัวคนพิการ"
  * ^comment = "เลขประจำตัวคนพิการ"
  * ^patternIdentifier.system = "https://terms.sil-th.org/id/th-disability-no"
  * system 1..
  * system = "https://terms.sil-th.org/id/th-disability-no" (exactly)
  * value 1..
    * obeys PWD-length
    * ^example.label = "เลขประจำตัวคนพิการ"
    * ^example.valueString = "1234567890123"
  * period.start ^short = "วันขึ้นทะเบียนบัตรผู้พิการ"
  * period.end ^short = "วันหมดอายุบัตรผู้พิการ"
* identifier[hn] ^short = "เลขที่ผู้ป่วยนอก (HN)"
  * ^comment = "เลขทะเบียนการมารับบริการ กำหนดได้ตั้งแต่ 1-15 หลัก (program generate)"
  * ^patternIdentifier.type = $CS_HL7_IdentifierType#MR
  * system 1..
    * obeys HN-uri
    * ^example.label = "HN namespace"
    * ^example.valueUri = "https://terms.sil-th.org/hcode/5/XXXXX/HN"
  * value 1..
    * obeys HN-length
    * ^example.label = "เลขที่ผู้ป่วยนอก (HN)"
    * ^example.valueString = "123456"
* identifier[passportNo] ^short = "เลขที่ passport"
  * ^comment = "กรณีที่เป็นประชากรต่างด้าวที่มีเลขที่ passport"
  * ^patternIdentifier.type = $CS_HL7_IdentifierType#PPN
  * system 1..
    * obeys Passport-uri
    * ^comment = "กำหนดระบบข้อมูลตามรูปแบบ http://hl7.org/fhir/sid/passport-[XXX] โดย [XXX] คือ รหัสประเทศสามตัวอักษร (alpha-3) ตามมาตรฐาน ISO 3166"
    * ^example.label = "Thai passport namespace"
    * ^example.valueUri = "http://hl7.org/fhir/sid/passport-THA"
  * value 1..
    * ^example.label = "Thai passport number"
    * ^example.valueString = "AA123456"
* identifier[workPermit] ^short = "เลขที่ใบอนุญาตทำงาน"
  * ^comment = "กรณีที่เป็นประชากรต่างด้าวที่มีเลขที่ passport"
  * ^patternIdentifier.type = $CS_HL7_IdentifierType#WP
  * system 1..
  * system = "https://terms.sil-th.org/id/th-mol-wp" (exactly)
  * value 1..
    * obeys WP-length
    * ^example.label = "เลขที่ใบอนุญาตทำงาน"
    * ^example.valueString = "1234567890123"
* name MS
* telecom MS
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "system"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "use"
  * ^slicing.rules = #open
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
  * ^short = "เพศ"
* birthDate MS
  * ^short = "วันเกิด"
  * ^comment = "วันเดือนปีเกิด (ระบุในรูปแบบ YYYY-MM-DD) หากไม่ทราบวัน เดือนที่เกิด แต่ทราบ ค.ศ เกิด ให้กำหนดวันเกิดเป็นวันที่ 1 มกราคมของปี ค.ศ.นั้นๆ"
* address MS
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "type"
  * ^slicing.rules = #open
* address contains
    postal 0..* MS and
    physical 0..* MS
* address[postal] ^short = "ที่อยู่ตามทะเบียนบ้าน"
  * type = #postal (exactly)
* address[physical] ^short = "ที่อยู่ที่ติดต่อได้"
  * type = #physical (exactly)
* maritalStatus MS
  * ^short = "สถานะสมรส"
* generalPractitioner.display MS
  * ^short = "ชื่อ แพทย์, เจ้าหน้าที่ ที่รักษาประจำหรือบ่อยๆ"
* managingOrganization MS
  * ^short = "สถานพยาบาล"