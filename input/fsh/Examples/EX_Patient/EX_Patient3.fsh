Instance: patient-patient3
InstanceOf: $SD_Patient_Base
Title: "ตัวอย่าง Patient: ผู้ป่วยรายที่ 3 หญิงไทย พิการ ย้ายออก และเสียชีวิตแล้ว"
Description: "ตัวอย่างการบันทึกข้อมูล กรณีผู้ป่วยพิการ ย้ายออก และเสียชีวิตแล้ว (ข้อมูลโดยย่อ เฉพาะประเด็นสำคัญ)"
Usage: #example
* extension[+]
  * url = $EX_TH_PatientPidRemoveReason
  * valueCodeableConcept
    * coding[0] = $CS_43File_PidRemoveReason#1 "ตาย"
    * text = "ตาย"
* identifier[0]
  * use = #official
  * type
    * coding[0] = $CS_HL7_IdentifierType#NI "National unique individual identifier"
    * coding[+] = $CS_TH_IdentifierType#cid "เลขประจำตัวประชาชนไทย"
  * system = $ID_ThaiCid
  * value = "2650591524440"
* identifier[+]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#PN "Person number"
    * coding[+] = $CS_TH_IdentifierType#disability "เลขประจำตัวคนพิการ"
  * system = $ID_ThaiDisability
  * value = "XXXXXXXX"
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
    * end = "2022-04-25"
* identifier[+]
  * use = #secondary
  * type
    * coding[0] = $CS_HL7_IdentifierType#MR "Medical record number"
    * coding[+] = $CS_TH_IdentifierType#localHn "เลข Hospital Number (HN) ของหน่วยบริการ"
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