Instance: patient-patient1
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
  * type = $CS_HL7_IdentifierType#MR "Medical record number"
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
    * valueReference = Reference(location-patient1-home1)
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
* generalPractitioner = Reference(practitioner-doctor1)
  * insert GeneralReference($ID_ThaiDoctor, "XXXXX" , "พญ. สมหญิง จริงใจ")

