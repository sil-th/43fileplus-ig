Instance: practitioner-dentist1
InstanceOf: Practitioner
Title: "ตัวอย่าง Practitioner: ทันตแพทย์ รายที่ 1"
Description: "ข้อมูลทันตแพทย์รายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NI "National unique individual identifier"
  * system = $ID_ThaiCid
  * value = "2650515222440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* identifier[+]
  * use = #secondary
  * type = $CS_HL7_IdentifierType#DDS "Dentist license number"
  * system = $ID_ThaiDentist
  * value = "34222"
* active = true
* name[0]
  * text = "ทพญ. สมทรวง จริงใจ"
  * family = "จริงใจ"
  * given = "สมทรวง"
  * prefix = "ทพญ."
* gender = #female
* birthDate = "1970-04-25"
* qualification
  * code
    * coding[0] = $SCT#106289002 "Dentist"
  * period
    * start = "1996-04-25"