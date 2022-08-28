Instance: patient-patient2
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
  * url = $EX_TH_PatientRace
  * valueCodeableConcept
    * coding[0] = $ISO3166#USA
    * coding[+] = $CS_THCC_Nationality#029
    * text = "อเมริกัน"
* extension[+]
  * url = $EX_TH_PatientForeignerType
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
  * type = $CS_HL7_IdentifierType#MR "Medical record number"
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
