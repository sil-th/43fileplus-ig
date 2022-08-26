Instance: patient-patient5
InstanceOf: Patient
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 5 เด็กหญิงไทย"
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
  * text = "ด.ญ. น่ารัก ใจดี"
  * family = "ใจดี"
  * given = "น่ารัก"
  * prefix = "ด.ญ."
* gender = #male
* birthDate = "2010-04-25"
* address[0]
  * use = #home
  * text = "123 หมู่ที่ 20 ถนนสมเด็จ ตำบลตาลสุม อำเภอตาลสุม จังหวัดอุบลราชธานี 34330"
  * line = "123 หมู่ที่ 20 ถนนสมเด็จ"
  * city = "ตาลสุม"
  * district = "ตาลสุม"
  * state = "อุบลราชธานี"
  * postalCode = "34330"