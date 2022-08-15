Instance: Patient1
InstanceOf: Patient
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 1 ชายไทย"
Description: "มีข้อมูลครบถ้วนสมบูรณ์ ซึ่งจะมีรายละเอียดค่อนข้างมาก ในการใช้งานจริงอาจลดทอนรายละเอียดลง หรือเพิ่มเติมข้อมูลเข้าไปได้เช่นกัน"
Usage: #example
* extension[0]
  * url = $EX_HL7_Nationality
  * extension[0]
    * url = "code"
    * valueCodeableConcept
      * coding[0] = $ISO3166#THA
      * coding[+] = $CS_THCC_Nationality#099
      * text = "ไทย"
  * extension[+]
    * url = "period"
    * valuePeriod
      * start = "1960-04-25"
* extension[+]
  * url = $EX_TH_Race
  * valueCodeableConcept
    * coding[0] = $ISO3166#THA
    * coding[+] = $CS_THCC_Nationality#099
    * text = "ไทย"
* extension[+]
  * url = $EX_HL7_Religion
  * valueCodeableConcept
    * coding[0] = $CS_HL7_Religion#1051 "Theravada"
    * coding[+] = $CS_THCC_Religion#01 "ศาสนาพุทธ"
    * text = "ศาสนาพุทธ"
* extension[+]
  * url = $EX_TH_EducationLevel
  * valueCodeableConcept
    * coding[0] = $CS_TH_ISCED1997#61 "ปริญญาตรี"
    * coding[+] = $EX_TH_EducationLevel#05 "ปริญญาตรี"
    * text = "ปริญญาตรี"
* extension[+]
  * url = $EX_TH_PersonStatus
  * valueCodeableConcept
    * coding[0] = $CS_THCC_PersonStatus#1 "มีชื่ออยู่ตามทะเบียนบ้านในเขตรับผิดชอบและอยู่จริง"
    * text = "มีชื่ออยู่ตามทะเบียนบ้านในเขตรับผิดชอบและอยู่จริง"
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #usual
  * type = $CS_HL7_IdentifierType#PPN "Passport number"
  * system = $ID_ThaiPassport
  * value = "XX000009000"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #usual
  * type = $CS_HL7_IdentifierType#WP "Work Permit"
  * system = $ID_ThaiWorkPermit
  * value = "XXXXXXXXXXX"
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
  * type = $CS_HL7_IdentifierType#MRN "Medical record number"
  * system = $ID_LO_HN
  * value = "65-XXXXX"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาย สมชาย ใจดี"
  * family = "ใจดี"
  * given = "สมชาย"
  * prefix = "นาย"
    * extension
      * url = $EX_TH_NamePrefix
      * valueCodeableConcept
        * coding[0] = $CS_DOPA_NamePrefix#003 "นาย"
        * text = "นาย"
* name[+]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #en
  * text = "Mr. Somchai Jaidee"
  * family = "Jaidee"
  * given = "Somchai"
  * prefix = "Mr."
* telecom[0]
  * system = #phone
  * value = "088-8888888"
  * use = #mobile
* telecom[+]
  * system = #phone
  * value = "02-222-2222"
  * use = #home
* telecom[+]
  * system = #email
  * value = "somchaijaidee@jaidee.com"
* gender = #male
* birthDate = "1960-04-25"
* address[0]
  * extension[0]
    * url = $EX_TH_AddressCode
    * valueCoding = $CS_DOPA_Location#120102 "จังหวัดนนทบุรี อำเภอเมืองนนทบุรี ตำบลตลาดขวัญ"
  * extension[+]
    * url = $EX_TH_StructureLine
    * extension[0]
      * url = "number"
      * valueString = "123"
    * extension[+]
      * url = "building-village"
      * valueString = "คอนโดพัฒนานนท์"
    * extension[+]
      * url = "village-no"
      * valueString = "หมู่ที่ 20"
    * extension[+]
      * url = "road"
      * valueString = "ถนนนครอินทร์"
    * extension[+]
      * url = "lane"
      * valueString = "ซอยนครอินทร์ 20"
  * extension[+]
    * url = $EX_TH_HomeReference
    * valueReference = Reference(Patient1Home)
      * insert GeneralReference($ID_DopaHouseNo, "XXXXXXXXXXX", "123 คอนโดพัฒนานนท์")
  * extension[+]
    * url = $EX_TH_HouseType
    * valueCodeableConcept = $CS_THCC_HouseType#3 "คอนโดมิเนียม"
  * use = #home
  * text = "123 คอนโดพัฒนานนท์ หมู่ที่ 20 ถนนนครอินทร์ ซอยนครอินทร์ 20 ตำบลตลาดขวัญ อำเภอเมืองนนทบุรี จังหวัดนนทบุรี 11000"
  * line = "123 คอนโดพัฒนานนท์ หมู่ที่ 20 ถนนนครอินทร์ ซอยนครอินทร์ 20"
  * city = "ตลาดขวัญ"
  * district = "เมืองนนทบุรี"
  * state = "นนทบุรี"
  * postalCode = "11000"
* maritalStatus = $CS_HL7_MaritalStatus#M "Married"
  * coding[1] = $CS_THCC_Marital#2 "คู่"
* generalPractitioner = Reference(PractitionerDoctor1)
  * insert GeneralReference($ID_ThaiDoctor, "XXXXX" , "พญ. สมหญิง จริงใจ")


Instance: Patient2
InstanceOf: Patient
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 2 ชายต่างชาติ"
Description: "ตัวอย่างการบันทึกข้อมูลกรณีชาวต่างชาติ เฉพาะส่วนที่เกี่ยวข้องกับชาวต่างชาติ"
Usage: #example
* extension[0]
  * url = $EX_HL7_Nationality
  * extension[0]
    * url = "code"
    * valueCodeableConcept
      * coding[0] = $ISO3166#USA
      * coding[+] = $CS_THCC_Nationality#029
      * text = "อเมริกัน"
  * extension[+]
    * url = "period"
    * valuePeriod
      * start = "1960-04-25"
* extension[+]
  * url = $EX_TH_Race
  * valueCodeableConcept
    * coding[0] = $ISO3166#USA
    * coding[+] = $CS_THCC_Nationality#029
    * text = "อเมริกัน"
* extension[+]
  * url = $EX_TH_ForeignerType
  * valueCodeableConcept
    * coding[+] = $CS_THCC_ForeignerType#30 "ประชากรต่างด้าวที่เป็นนักท่องเที่ยวเข้าเมืองโดยถูกต้องตามกฎหมาย"
    * text = "ประชากรต่างด้าวที่เป็นนักท่องเที่ยวเข้าเมืองโดยถูกต้องตามกฎหมาย"
* identifier[0]
  * use = #usual
  * type = $CS_HL7_IdentifierType#PPN "Passport number"
  * system = "http://hl7.org/fhir/sid/passport-USA"
  * value = "XX000009000"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #usual
  * type = $CS_HL7_IdentifierType#WP "Work Permit"
  * system = $ID_ThaiWorkPermit
  * value = "XXXXXXXXXXX"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#PN "Person number"
  * system = $ID_LO_PID
  * value = "65-XXXXX"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#MRN "Medical record number"
  * system = $ID_LO_HN
  * value = "65-XXXXX"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาย ปีเตอร์ ปาร์กเกอร์"
  * family = "ปาร์กเกอร์"
  * given = "ปีเตอร์"
* name[+]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #en
  * text = "Mr. Peter Parker"
  * family = "Parker"
  * given = "Peter"
  * prefix = "Mr."


Instance: Patient3
InstanceOf: Patient
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 3 หญิงไทย พิการ ย้ายออก และเสียชีวิตแล้ว"
Description: "ตัวอย่างการบันทึกข้อมูล กรณีผู้ป่วยพิการ ย้ายออก และเสียชีวิตแล้ว (ข้อมูลโดยย่อ เฉพาะประเด็นสำคัญ)"
Usage: #example
* extension[+]
  * url = $EX_TH_PidRemoveReason
  * valueCodeableConcept
    * coding[0] = $CS_THCC_PidRemoveReason#1 "ตาย"
    * text = "ตาย"
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
  * system = $ID_ThaiCid
  * value = "2650591524440"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#PN "Person number"
  * system = $ID_ThaiDisability
  * value = "XXXXXXXX"
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
    * end = "2022-04-25"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#MRN "Medical record number"
  * system = $ID_LO_HN
  * value = "65-XXXXX"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาง สมปอง ใจดี"
  * family = "ใจดี"
  * given = "สมชาย"
  * prefix = "นาง"
* gender = #male
* birthDate = "1960-04-25"
* deceasedDateTime = "2022-04-25T12:30:02+07:00"
* address[0]
  * use = #old
  * line = "123 คอนโดพัฒนานนท์ หมู่ที่ 20 ถนนนครอินทร์ ซอยนครอินทร์ 20"
  * city = "ตลาดขวัญ"
  * district = "เมืองนนทบุรี"
  * state = "นนทบุรี"
  * postalCode = "11000"



Instance: Patient4
InstanceOf: Patient
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 4 หญิงไทย โรคเรื้อรัง"
Description: "แสดงการบันทึกข้อมูลอย่างย่อ"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
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
  * type = $CS_HL7_IdentifierType#MRN "Medical record number"
  * system = $ID_LO_HN
  * value = "65-XXXXX"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาง สมควร ใจดี"
  * family = "ใจดี"
  * given = "สมควร"
  * prefix = "นาง"
* telecom[0]
  * system = #phone
  * value = "088-8888888"
  * use = #mobile
* telecom[+]
  * system = #email
  * value = "somkuanjaidee@jaidee.com"
* gender = #female
* birthDate = "1990-04-25"
* address[0]
  * extension[0]
    * url = $EX_TH_AddressCode
    * valueCoding = $CS_DOPA_Location#342001 "จังหวัดอุบลราชธานี อำเภอตาลสุม ตำบลตาลสุม"
  * extension[+]
    * url = $EX_HL7_Geolocation
    * extension[0]
      * url = "latitude"
      * valueString = "78.31809"
    * extension[+]
      * url = "longitude"
      * valueString = "-133.03485"
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
* maritalStatus = $CS_HL7_MaritalStatus#M "Married"
  * coding[1] = $CS_THCC_Marital#2 "คู่"



Instance: Patient5
InstanceOf: Patient
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 5 เด็กหญิงไทย"
Description: "แสดงการบันทึกข้อมูลอย่างย่อ"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
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
  * type = $CS_HL7_IdentifierType#MRN "Medical record number"
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




Instance: Patient6
InstanceOf: Patient
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 6 หญิงไทย ตั้งครรภ์และคลอด"
Description: "แสดงการบันทึกข้อมูลอย่างย่อ"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
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
  * type = $CS_HL7_IdentifierType#MRN "Medical record number"
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
* maritalStatus = $CS_HL7_MaritalStatus#M "Married"
  * coding[1] = $CS_THCC_Marital#2 "คู่"