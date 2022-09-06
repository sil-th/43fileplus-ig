Instance: practitioner-doctor1
InstanceOf: $SD_Practitioner
Title: "ตัวอย่าง Practitioner: แพทย์ รายที่ 1"
Description: "ข้อมูลแพทย์รายที่ 1"
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
  * type = $CS_HL7_IdentifierType#MD "Medical License number"
  * system = $ID_ThaiDoctor
  * value = "23222"
* active = true
* name[0]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #th
  * text = "พญ. สมหญิง จริงใจ"
  * family = "จริงใจ"
  * given = "สมหญิง"
  * prefix = "พญ."
* name[+]
  * extension
    * url = $EX_HL7_Language
    * valueCode = #en
  * text = "Dr. Somying Jingjaid"
  * family = "Jingjai"
  * given = "Somying"
  * prefix = "Dr."
* gender = #female
* birthDate = "1960-04-25"
* qualification
  * code
    * coding[0] = $SCT#309343006 "Physician"
  * period
    * start = "1986-04-25"
  * issuer = Reference(Organization/organization-medical-council)
    * extension[0]
      * url = $EX_TH_PractitionerQualificationIssuer
      * valueCodeableConcept
        * coding[0] = $CS_THCC_QualificationIssuer#01 "แพทยสภา"
        * text = "แพทยสภา"