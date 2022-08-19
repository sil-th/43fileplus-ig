Instance: condition-ipd1-main
InstanceOf: Condition
Title: "ตัวอย่าง Condition: การวินิจฉัยโรคมะเร็ง ในบริการ IPD"
Description: "การวินิจฉัยโรคมะเร็ง ในบริการ IPD"
Usage: #example
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#254837009 "Breast cancer"
  * coding[+] = $CS_eClaim_CancerType#Br "Breast"
  * text = "Breast cancer"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* recordedDate = "2022-01-01T12:30:02+07:00"
* recorder = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* note.text = "หมายเหตุประกอบการวินิจฉัยโรค"