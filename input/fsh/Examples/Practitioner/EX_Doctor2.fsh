Instance: PractitionerDoctor2
InstanceOf: Practitioner
Title: "ตัวอย่าง Practitioner: แพทย์ รายที่ 2"
Description: "ข้อมูลแพทย์รายที่ 2"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
  * system = $ID_ThaiCid
  * value = "2650515222440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* active = true
* name[0]
  * text = "พญ. สมศรี จริงใจ"
  * family = "จริงใจ"
  * given = "สมศรี"
  * prefix = "พญ."
* gender = #female
* birthDate = "1970-04-25"
* qualification
  * identifier
    * use = #secondary
    * type = $CS_HL7_IdentifierType#MD "Medical License number"
    * system = $ID_ThaiDoctor
    * value = "34222"
  * code
    * coding[0] = $SCT#309343006 "Physician"
  * period
    * start = "1996-04-25"