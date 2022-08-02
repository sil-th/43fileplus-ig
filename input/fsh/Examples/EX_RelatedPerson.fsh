Instance: Patient1Mother
InstanceOf: RelatedPerson
Title: "มารดาของผู้ป่วยรายที่ 1"
Description: "มารดาของผู้ป่วยรายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* patient = Reference(Patient/Patient1)
* relationship = $CS_HL7_RelationshipType#MTH "mother"
* name[0]
  * text = "นาง มารดา ใจดี"
  * family = "ใจดี"
  * given = "มารดา"
  * prefix = "นาง"
* telecom[0]
  * system = #phone
  * value = "088-8888888"

Instance: Patient1Father
InstanceOf: RelatedPerson
Title: "บิดาของผู้ป่วยรายที่ 1"
Description: "บิดาของผู้ป่วยรายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* patient = Reference(Patient/Patient1)
* relationship = $CS_HL7_RelationshipType#FTH "father"
* name[0]
  * text = "นาย บิดา ใจดี"
  * family = "ใจดี"
  * given = "บิดา"
  * prefix = "นาย"
* telecom[0]
  * system = #phone
  * value = "088-8888888"

Instance: Patient1Spouse
InstanceOf: RelatedPerson
Title: "คู่สมรสของผู้ป่วยรายที่ 1"
Description: "คู่สมรสของผู้ป่วยรายที่ 1"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#NNTHA "National Person Identifier"
  * system = $ID_ThaiCid
  * value = "2650591524440"
  * period
    * start = "2018-04-25"
    * end = "2022-04-25"
* patient = Reference(Patient/Patient1)
* relationship = $CS_HL7_RelationshipType#SPS "spouse"
* name[0]
  * text = "นาง คู่สมรส ใจดี"
  * family = "ใจดี"
  * given = "คู่สมรส"
  * prefix = "นาง"
* telecom[0]
  * system = #phone
  * value = "088-8888888"