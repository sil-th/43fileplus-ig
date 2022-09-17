Instance: condition-ncd1
InstanceOf: $SD_Condition_NCD
Title: "ตัวอย่าง Condition: การวินิจฉัยสำหรับการบริการคัดกรองโรค NCD"
Description: "การวินิจฉัยสำหรับการบริการคัดกรองโรค NCD"
Usage: #example
* clinicalStatus = $CS_HL7_ConditionStatus#active
* verificationStatus = $CS_HL7_ConditionVerification#confirmed
* category = $CS_HL7_ConditionCategory#problem-list-item "Problem List Item"
* code
  * coding[0] = $SCT#44054006 "Diabetes mellitus type 2"
  * coding[+] = $ICD10#E11.9 "Type 2 diabetes mellitus : Without complications"
  * text = "Diabetes mellitus type 2"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* recordedDate = "2022-01-21T12:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"


Instance: condition-ncd-summary
InstanceOf: $SD_Condition_NCD
Title: "ตัวอย่าง Condition: การวินิจฉัยสำหรับการบริการคัดกรองโรค NCD"
Description: "การวินิจฉัยสำหรับการบริการคัดกรองโรค NCD"
Usage: #example
* clinicalStatus = $CS_HL7_ConditionStatus#active
* verificationStatus = $CS_HL7_ConditionVerification#confirmed
* category = $CS_HL7_ConditionCategory#problem-list-item "Problem List Item"
* code
  * coding[0] = $CS_43Plus_NcdStatus#1 "เป็น"
  * text = "เป็นโรคในกลุ่ม NCD"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* recordedDate = "2022-01-21T12:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"