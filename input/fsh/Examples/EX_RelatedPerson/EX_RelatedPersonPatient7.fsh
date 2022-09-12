Instance: relatedperson-patient7-mother
InstanceOf: RelatedPerson
Title: "ตัวอย่าง RelatedPerson: มารดาของผู้ป่วยรายที่ 1"
Description: "มารดาของผู้ป่วยรายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_HL7_IdentifierType#NI "National unique individual identifier"
    * coding[+] = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#PN "Person number"
    * coding[+] = $CS_TH_IdentifierType#localPid "รหัสประจำตัวบุคคลของหน่วยบริการ"
  * system = $ID_LO_PID
  * value = "65-XXXXX"
  * period
    * start = "2018-04-25"
* identifier[+]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#MR "Medical record number"
    * coding[+] = $CS_TH_IdentifierType#localHn "เลข Hospital Number (HN) ของหน่วยบริการ"
  * system = $ID_LO_HN
  * value = "65-XXXXX"
* patient = Reference(Patient/patient-patient7)
* relationship = $CS_HL7_RelationshipType#MTH "mother"
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาง สมฤทัย ใจดี"
  * family = "ใจดี"
  * given = "สมฤทัย"
  * prefix = "นาง"
* telecom[0]
  * system = #phone
  * value = "088-8888888"
  * use = #mobile
* telecom[+]
  * system = #email
  * value = "somruetaijaidee@jaidee.com"
* gender = #female
* birthDate = "1996-04-25"
* address[0]
  * extension[0]
    * url = $EX_TH_AddressDopaCode
    * valueCodeableConcept = $CS_DOPA_Location#342001 "จังหวัดอุบลราชธานี อำเภอตาลสุม ตำบลตาลสุม"
  * extension[+]
    * url = $EX_TH_AddressStructuredLine
    * extension[0]
      * url = "number"
      * valueString = "123"
    * extension[+]
      * url = "villageNo"
      * valueString = "หมู่ที่ 20"
    * extension[+]
      * url = "road"
      * valueString = "ถนนสมเด็จ"
  * use = #home
  * text = "123 หมู่ที่ 20 ถนนสมเด็จ ตำบลตาลสุม อำเภอตาลสุม จังหวัดอุบลราชธานี 34330"
  * line = "123 หมู่ที่ 20 ถนนสมเด็จ"
  * city = "ตาลสุม"
  * district = "ตาลสุม"
  * state = "อุบลราชธานี"
  * postalCode = "34330"