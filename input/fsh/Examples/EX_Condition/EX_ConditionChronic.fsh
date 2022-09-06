Instance: condition-chronic1
InstanceOf: Condition
Title: "ตัวอย่าง Condition: โรคเบาหวานของผู้ป่วยรายที่ 4"
Description: "แสดงการประวัติการเป็นโรคเบาหวานของผู้ป่วยรายที่ 4"
Usage: #example
* category = $CS_HL7_ConditionCategory#problem-list-item "Problem List Item"
* code
  * coding[0] = $SCT#73211009 "Diabetes mellitus"
  * coding[+] = $ICD10#E14.9 "Unspecified diabetes mellitus : Without complications"
  * text = "Diabetes mellitus"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* recordedDate = "2022-01-01T12:30:02+07:00"
* recorder = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"


Instance: condition-chronic2
InstanceOf: Condition
Title: "ตัวอย่าง Condition: โรคเบาหวานของผู้ป่วยรายที่ 1"
Description: "แสดงการประวัติการเป็นโรคเบาหวานของผู้ป่วยรายที่ 1"
Usage: #example
* category = $CS_HL7_ConditionCategory#problem-list-item "Problem List Item"
* code
  * coding[0] = $SCT#59621000 "Essential hypertension (disorder)"
  * coding[+] = $ICD10#I10 "Essential (primary) hypertension"
  * text = "Essential hypertension (disorder)"
* subject = Reference(Patient/patient-patient1) "นาย สมชาย ใจดี"
* recordedDate = "2022-01-01T12:30:02+07:00"
* recorder = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"