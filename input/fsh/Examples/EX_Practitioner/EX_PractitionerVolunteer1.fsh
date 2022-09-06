Instance: practitioner-volunteer1
InstanceOf: Practitioner
Title: "ตัวอย่าง Practitioner: อสม. รายที่ 1"
Description: "ข้อมูลอสม. รายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NI "National unique individual identifier"
  * system = $ID_ThaiCid
  * value = "2650591524440"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#PRN "Provider number"
  * system = $ID_ThaihealthVolunteer
  * value = "XXXXXX"
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "นาง ใจดี ชอบช่วย"
  * family = "ชอบช่วย"
  * given = "ใจดี"
  * prefix = "นาง"