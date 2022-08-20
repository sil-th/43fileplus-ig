Instance: patient-patient6
InstanceOf: Patient
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 6 หญิงไทย ตั้งครรภ์และคลอด"
Description: "แสดงการบันทึกข้อมูลอย่างย่อ"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NI "National unique individual identifier"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#PN "Person number"
  * system = $ID_LO_PID
  * value = "65-XXXXX"
  * period
    * start = "2018-04-25"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#MR "Medical record number"
  * system = $ID_LO_HN
  * value = "65-XXXXX"
* active = true
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
    * url = $EX_TH_AddressCode
    * valueCoding = $CS_DOPA_Location#342001 "จังหวัดอุบลราชธานี อำเภอตาลสุม ตำบลตาลสุม"
  * extension[+]
    * url = $EX_TH_StructureLine
    * extension[0]
      * url = "number"
      * valueString = "123"
    * extension[+]
      * url = "village-no"
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
* maritalStatus
  * coding[0] = $CS_HL7_MaritalStatus#M "Married"
  * coding[+] = $CS_THCC_Marital#2 "คู่"
* link
  * other = Reference(RelatedPerson/relatedperson-patient7-mother)
  * type = #seealso